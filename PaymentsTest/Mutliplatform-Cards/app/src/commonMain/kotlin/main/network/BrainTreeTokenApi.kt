package main.network

import io.ktor.http.ContentType
import kotlinx.serialization.json.Json
import kotlinx.serialization.list
import main.model.BrainTreeToken
import main.model.UserCard
import main.utils.BasicHandler
import main.utils.BrainTreeTokenHandler
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

class BrainTreeTokenApi(val callback:BrainTreeTokenHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {
    init {
        requestEncodedPath = "/payments/braintree/gettoken"
    }

    fun getUserToken() {
        sendGetRequest()
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        println("TOKEN : $response")
        val token = Json.nonstrict.parse(BrainTreeToken.serializer(), response)
        callback(token)
    }
}