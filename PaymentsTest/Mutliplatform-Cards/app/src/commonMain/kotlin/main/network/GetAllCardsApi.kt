package main.network

import kotlinx.serialization.json.Json
import kotlinx.serialization.list
import main.model.UserCard
import main.utils.CardsListHandler
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

class GetAllCardsApi(val callback:CardsListHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {
    init {
        requestEncodedPath="/cards/getall/"
    }

    fun getAllCards() {
        sendGetRequest()
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        println("Respose : $response")
        val allUserCards:List<UserCard> = Json.nonstrict.parse(UserCard.serializer().list, response)
        callback(allUserCards)
    }
}