package com.iosdeveloper.routes

import com.iosdeveloper.model.Card
import com.iosdeveloper.repositpries.DatabaseRepository
import com.iosdeveloper.utils.AddEntityError
import com.iosdeveloper.utils.GENERIC_ERROR
import com.iosdeveloper.utils.GENERIC_INSERT_ERROR
import io.ktor.application.call
import io.ktor.http.HttpStatusCode
import io.ktor.request.ContentTransformationException
import io.ktor.request.receive
import io.ktor.response.respond
import io.ktor.routing.Route
import io.ktor.routing.get
import io.ktor.routing.post

private val GET_ALL_CARDS_ROUTE:String = "/cards/getall"
private val ADD_CARD_ROUTE:String = "/cards/addcard"

fun Route.cards() {
    get(GET_ALL_CARDS_ROUTE) {
        val allCards:List<Card> = DatabaseRepository.getAllCards()
        call.respond(allCards)
    }
    post(ADD_CARD_ROUTE) {
        try {

            val result = DatabaseRepository.addNewCard(call.receive<Card>())
            if (result.success) {
                call.respond(HttpStatusCode.OK)
            } else {
                call.respond(AddEntityError, result.message)
            }

        } catch (transformException:ContentTransformationException) {
            call.respond(AddEntityError, "$GENERIC_INSERT_ERROR : ${transformException.message}")
        } catch (genericException:Exception) {
            call.respond(AddEntityError, "$GENERIC_ERROR : ${genericException.message}")
        }
    }
}