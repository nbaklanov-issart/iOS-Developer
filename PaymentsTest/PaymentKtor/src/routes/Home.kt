package com.iosdeveloper.routes

import com.iosdeveloper.model.user.MyUser
import com.stripe.model.Charge
import io.ktor.application.call
import io.ktor.response.respond
import io.ktor.response.respondText
import io.ktor.routing.Route
import io.ktor.routing.get

private val HOME_ROUTE:String = "/"

fun Route.home() {
    get(HOME_ROUTE) {
        call.respondText("Payments test server is running")
    }
}