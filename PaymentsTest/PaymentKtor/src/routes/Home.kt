package com.iosdeveloper.routes

import com.stripe.model.Charge
import io.ktor.application.call
import io.ktor.response.respondText
import io.ktor.routing.Route
import io.ktor.routing.get

private val HOME_ROUTE:String = "/"

fun Route.home() {
    get(HOME_ROUTE) {
        call.respondText("Welcome to hell, биатч!!!")
    }
}