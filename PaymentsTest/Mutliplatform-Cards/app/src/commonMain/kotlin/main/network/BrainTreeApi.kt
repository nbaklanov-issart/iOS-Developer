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

class BrainTreeApi(val callback:BrainTreeTokenHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {
    private val baseApiPath:String = "/payments/braintree"

    fun getUserToken() {
        requestEncodedPath="$baseApiPath/gettoken"
        sendGetRequest()
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        val token = Json.nonstrict.parse(BrainTreeToken.serializer(), response)
        callback(token)
    }
}