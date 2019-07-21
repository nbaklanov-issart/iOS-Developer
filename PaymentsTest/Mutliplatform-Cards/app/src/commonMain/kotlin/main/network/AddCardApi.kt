package main.network

import io.ktor.content.TextContent
import io.ktor.http.ContentType
import kotlinx.serialization.json.Json
import main.model.UserCard
import main.utils.BasicHandler
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

class AddCardApi(val callback:BasicHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {

    init {
        requestEncodedPath="/cards/addcard/"
    }

    fun addNewCard(card:UserCard) {
        println("CARD : $card")
        val cardData = Json.stringify(UserCard.serializer(), card)
        sendPostRequest(requestBody = TextContent(cardData, ContentType.Application.Json))
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        callback()
    }
}