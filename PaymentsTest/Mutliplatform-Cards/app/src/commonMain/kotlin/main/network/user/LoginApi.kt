package main.network.user

import io.ktor.content.TextContent
import io.ktor.http.ContentType
import kotlinx.serialization.json.Json
import main.model.StripeUserCard
import main.model.user.MyUser
import main.network.BaseApi
import main.utils.BasicHandler
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

class LoginApi(val callback:BasicHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {

    init {
        requestEncodedPath="/user/login/"
    }

    fun login(user: MyUser) {
        val cardData = Json.stringify(MyUser.serializer(), user)
        sendPostRequest(requestBody = TextContent(cardData, ContentType.Application.Json))
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        callback()
    }
}