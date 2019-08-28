package com.iosdeveloper.routes

import com.iosdeveloper.model.user.MyUser
import com.iosdeveloper.repositpries.DatabaseRepository
import com.iosdeveloper.utils.AlreadyExistErrorStatus
import com.iosdeveloper.utils.DefaultErrorStatus
import com.iosdeveloper.utils.GENERIC_ERROR
import com.iosdeveloper.utils.NotFoundErrorStatus
import io.ktor.application.call
import io.ktor.http.HttpStatusCode
import io.ktor.request.receive
import io.ktor.response.respond
import io.ktor.routing.Route
import io.ktor.routing.post

private val LOGIN_ROUTE:String = "/user/login"

fun Route.login() {
    post(LOGIN_ROUTE) {
        try {
            var user = call.receive<MyUser>()
            val exist = DatabaseRepository.checkSimpleUser(user.login)
            if (exist) {
                call.respond(HttpStatusCode.OK)
            } else {
                call.respond(NotFoundErrorStatus, "Not Found")
            }
        } catch (genericException:Exception) {
            call.respond(DefaultErrorStatus, "$GENERIC_ERROR : ${genericException.message}")
        }
    }
}