package main.network

import kotlinx.serialization.json.Json
import kotlinx.serialization.list
import main.model.StripeUserCard
import main.utils.CardsListHandler
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

class GetAllStripeCardsApi(val callback:CardsListHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {
    init {
        requestEncodedPath="/cards/stripe/getall/"
    }

    fun getAllCards() {
        sendGetRequest()
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        val allStripeUserCards:List<StripeUserCard> = Json.nonstrict.parse(StripeUserCard.serializer().list, response)
        callback(allStripeUserCards)
    }
}