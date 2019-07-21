package main.network

import kotlinx.serialization.json.Json
import kotlinx.serialization.list
import main.model.Card
import main.utils.CardsListHandler
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

class GetAllCardsApi(val callback:CardsListHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {
    init {
        requestEncodedPath="/cards/getall"
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        val allCards:List<Card> = Json.nonstrict.parse(Card.serializer().list, response)
        callback(allCards)
    }
}