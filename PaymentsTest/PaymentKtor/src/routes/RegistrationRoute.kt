package com.iosdeveloper.routes

import com.iosdeveloper.model.user.MyUser
import com.iosdeveloper.repositpries.DatabaseRepository
import com.iosdeveloper.utils.AlreadyExistErrorStatus
import com.iosdeveloper.utils.DefaultErrorStatus
import com.iosdeveloper.utils.GENERIC_ERROR
import io.ktor.application.call
import io.ktor.http.HttpStatusCode
import io.ktor.request.receive
import io.ktor.response.respond
import io.ktor.routing.Route
import io.ktor.routing.post

private val REGISTRATION_ROUTE:String = "/user/signup"

fun Route.registration() {
    post(REGISTRATION_ROUTE) {
        try {
            var user = call.receive<MyUser>()

            val exist = DatabaseRepository.checkSimpleUser(user.login)
            if (exist) {
                call.respond(AlreadyExistErrorStatus, "Already Exist same Login")
            } else {
                val result = DatabaseRepository.addSimpleUser(user)
                if (result.success) {
                    call.respond(HttpStatusCode.OK)
                } else {
                    call.respond(DefaultErrorStatus, result.message)
                }
            }
        } catch (genericException:Exception) {
            call.respond(DefaultErrorStatus, "$GENERIC_ERROR : ${genericException.message}")
        }
    }
}