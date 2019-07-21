package main.network

import io.ktor.client.HttpClient
import io.ktor.client.features.json.JsonFeature
import io.ktor.client.features.json.serializer.KotlinxSerializer
import io.ktor.client.request.parameter
import io.ktor.client.request.request
import io.ktor.client.response.HttpResponse
import io.ktor.client.response.readText
import io.ktor.client.utils.EmptyContent
import io.ktor.http.HttpMethod
import io.ktor.http.HttpStatusCode
import io.ktor.http.URLProtocol
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import main.utils.CoroutineContextProvider
import main.utils.DEFAULT_STRING_VALUE
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

abstract class BaseApi(exceptionHandler:ErrorHandler) {
    protected val errorCallback: ErrorHandler = exceptionHandler
    protected var requestEncodedPath:String = DEFAULT_STRING_VALUE

    private val serverAddress:String = "overcomingpain.issart.com"
    private val serverProtocol: URLProtocol = URLProtocol.HTTP
    private val client = HttpClient {
        expectSuccess = false
        install(JsonFeature) {
            serializer = KotlinxSerializer()
        }

    }

    protected fun sendGetRequest(requestBody:Any = EmptyContent,
                                 parameters:List<Pair<String, String>> = emptyList(),
                                 requestHeaders:List<Pair<String, String>> = emptyList()) {
        GlobalScope.launch(CoroutineContextProvider.provideContext()) {
            try {
                val call = client.request<HttpResponse> {
                    url {
                        protocol = serverProtocol
                        host = serverAddress
                        encodedPath = requestEncodedPath
                    }
                    method = HttpMethod.Get
                    body = requestBody

                    for (currentPair:Pair<String, String> in requestHeaders) {
                        headers.append(currentPair.first, currentPair.second)
                    }
                    for (currentPair:Pair<String, String> in parameters) {
                        parameter(currentPair.first, currentPair.second)
                    }
                }
                requestResponseHandler(call, call.readText())
            } catch (requestException:Exception) {
                requestExceptionHandler(requestException)
            }
        }
    }

    private fun requestResponseHandler(response: HttpResponse, textBody:String) {
        when (response.status.value) {
            HttpStatusCode.OK.value -> {
                processApiResponse(ApiResponseEnum.SUCCESS, textBody)
            }
            HttpStatusCode.Created.value -> {
                processApiResponse(ApiResponseEnum.CREATED, textBody)
            }
            else -> { errorCallback(ApiResponseEnum.NOT_SET, textBody) }
        }
    }

    private fun requestExceptionHandler(requestException:Exception) {
        errorCallback(ApiResponseEnum.EXCEPTION, requestException.message ?: "Some default message")
    }

    protected abstract fun processApiResponse(responseType:ApiResponseEnum, response:String)
}