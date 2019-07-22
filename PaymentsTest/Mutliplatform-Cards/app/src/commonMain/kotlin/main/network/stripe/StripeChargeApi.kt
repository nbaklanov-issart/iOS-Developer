package main.network

import io.ktor.http.ContentType
import io.ktor.content.TextContent
import kotlinx.serialization.json.Json
import main.model.ChargeParameters
import main.model.UserCard
import main.utils.BasicHandler
import main.utils.ErrorHandler
import overcoming.model.enum.ApiResponseEnum

class StripeChargeApi(val callback:BasicHandler, errorHandler:ErrorHandler) : BaseApi(errorHandler) {

    init {
        requestEncodedPath="/payments/stripe/shutupandtakemymoney/"
    }

    fun chargeUsingCard(card: UserCard) {
        val paymentParameters = ChargeParameters(card.id.toInt())
        val paymentData = Json.stringify(ChargeParameters.serializer(), paymentParameters)
        sendPostRequest(requestBody = TextContent(paymentData, ContentType.Application.Json))
    }

    override fun processApiResponse(responseType: ApiResponseEnum, response: String) {
        callback()
    }
}