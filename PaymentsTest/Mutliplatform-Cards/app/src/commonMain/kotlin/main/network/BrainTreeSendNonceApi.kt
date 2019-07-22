package main.network

import io.ktor.content.TextContent
import io.ktor.http.ContentType
import kotlinx.serialization.json.Json
import main.model.BrainTreeNonce
import main.utils.BasicHandler
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

class BrainTreeSendNonceApi(val callback:BasicHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {
    init {
        requestEncodedPath = "/payments/braintree/nonce/"
    }

    fun postNonce(value:BrainTreeNonce) {
        println("Posted nonce : $value")
        sendPostRequest(requestBody = TextContent(Json.stringify(BrainTreeNonce.serializer(), value), ContentType.Application.Json))
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        println("Nonce sent")
        callback()
    }
}