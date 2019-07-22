package com.iosdeveloper.routes

import com.iosdeveloper.payments.BrainTreePayment
import io.ktor.application.call
import io.ktor.http.HttpStatusCode
import io.ktor.response.respondText
import io.ktor.routing.Route
import io.ktor.routing.get

private val BRAIN_TREE_GET_TOKEN_ROUTE:String = "/payments/braintree/gettoken"

fun Route.brainTree() {
    get(BRAIN_TREE_GET_TOKEN_ROUTE) {
        call.respondText(text = BrainTreePayment.getClientToken(), status = HttpStatusCode.OK)
    }
}