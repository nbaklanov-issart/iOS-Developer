package com.iosdeveloper.routes

import com.braintreegateway.PaymentMethodNonce
import com.braintreegateway.Result
import com.braintreegateway.Transaction
import com.braintreegateway.TransactionRequest
import com.iosdeveloper.model.braintree.BrainTreeNonce
import com.iosdeveloper.model.braintree.BrainTreeToken
import com.iosdeveloper.payments.BrainTreePayment
import com.iosdeveloper.repositpries.DatabaseRepository
import com.iosdeveloper.utils.DefaultErrorStatus
import com.iosdeveloper.utils.GENERIC_ERROR
import io.ktor.application.call
import io.ktor.http.HttpStatusCode
import io.ktor.request.receive
import io.ktor.response.respond
import io.ktor.response.respondText
import io.ktor.routing.Route
import io.ktor.routing.get
import io.ktor.routing.post
import java.math.BigDecimal
import java.util.*

private val BRAIN_TREE_GET_TOKEN_ROUTE:String = "/payments/braintree/gettoken"
private val BRAIN_TREE_NONCE_ROUTE:String = "/payments/braintree/nonce"

fun Route.brainTree() {
    get(BRAIN_TREE_GET_TOKEN_ROUTE) {
        try {
            val token = BrainTreeToken(BrainTreePayment.getClientToken())
            call.respond(HttpStatusCode.OK, token)
        } catch (genericException:Exception) {
            call.respond(DefaultErrorStatus, "$GENERIC_ERROR : ${genericException.message}")
        }
    }

    post(BRAIN_TREE_NONCE_ROUTE) {
        try {
            val nonce = call.receive<BrainTreeNonce>()
            val transaction = TransactionRequest()
                .amount(BigDecimal("10.00"))
                .paymentMethodNonce(nonce.nonceValue)
                .options()
                .submitForSettlement(true)
                .done()
            val result:Result<Transaction> = BrainTreePayment.getGateway().transaction().sale(transaction)
            DatabaseRepository.addPayPalTransaction("PayPal transaction : ${Date()}", result.isSuccess)

            if (result.isSuccess) {
                call.respond(HttpStatusCode.OK)
            } else {
                call.respond(HttpStatusCode.BadRequest, result.message)
            }
        } catch (genericException:Exception) {
            call.respond(DefaultErrorStatus, "$GENERIC_ERROR : ${genericException.message}")
        }
    }
}