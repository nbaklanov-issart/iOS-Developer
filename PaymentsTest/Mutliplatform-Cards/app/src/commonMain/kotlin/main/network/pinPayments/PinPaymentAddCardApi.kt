package main.network.pinPayments

import io.ktor.content.TextContent
import io.ktor.http.ContentType
import kotlinx.serialization.json.Json
import main.model.pinPayment.PinPaymentNotAddedCard
import main.network.BaseApi
import main.utils.ErrorHandler
import main.utils.PinPaymentsAddCardHandler
import overcoming.model.enum.ApiResponseEnum

class PinPaymentAddCardApi(val callback:PinPaymentsAddCardHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {
    init {
        serverAddress = "test-api.pinpayments.com"
        requestEncodedPath = "/1/cards"
    }

    fun sendCard(value:PinPaymentNotAddedCard) {
        println("Posted card : $value")
        sendPostRequest(requestBody = TextContent(Json.stringify(PinPaymentNotAddedCard.serializer(), value), ContentType.Application.Json))
    }

    override fun processApiResponse(responseType:ApiResponseEnum, response: String) {
        println("Nonce sent")
        //callback()
    }
}