package main.network.stripe

import io.ktor.content.TextContent
import io.ktor.http.ContentType
import kotlinx.serialization.json.Json
import main.model.StripeUserCard
import main.network.BaseApi
import main.utils.BasicHandler
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

class AddStripeCardApi(val callback:BasicHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {

    init {
        requestEncodedPath="/cards/stripe/addcard/"
    }

    fun addNewCard(cardStripe:StripeUserCard) {
        println("CARD : $cardStripe")
        val cardData = Json.stringify(StripeUserCard.serializer(), cardStripe)
        sendPostRequest(requestBody = TextContent(cardData, ContentType.Application.Json))
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        callback()
    }
}