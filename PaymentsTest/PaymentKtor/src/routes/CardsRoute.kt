package com.iosdeveloper.routes

import com.iosdeveloper.model.Card
import com.iosdeveloper.repositpries.DatabaseRepository
import com.iosdeveloper.utils.DefaultErrorStatus
import com.iosdeveloper.utils.GENERIC_ERROR
import com.iosdeveloper.utils.GENERIC_INSERT_ERROR
import com.iosdeveloper.utils.STRIPE_SOURCE_PARAMETER
import io.ktor.application.call
import io.ktor.http.HttpStatusCode
import io.ktor.request.ContentTransformationException
import io.ktor.request.receive
import io.ktor.response.respond
import io.ktor.routing.Route
import io.ktor.routing.get
import io.ktor.routing.post
import java.util.HashMap
import com.stripe.model.Customer



private val GET_ALL_CARDS_ROUTE:String = "/cards/getall"
private val ADD_CARD_ROUTE:String = "/cards/addcard"

fun Route.cards() {
    get(GET_ALL_CARDS_ROUTE) {
        val allCards:List<Card> = DatabaseRepository.getAllCards()
        call.respond(allCards)
    }
    post(ADD_CARD_ROUTE) {
        try {
            var card = call.receive<Card>()
            val stripeDefaultCustomer = DatabaseRepository.getStripeClient()
            val customer = Customer.retrieve(stripeDefaultCustomer.stripeId)
            println("CUSTOMER : $customer")
            val params = HashMap<String, Any>()
            params[STRIPE_SOURCE_PARAMETER] = card.token
            val stripeCard = customer.sources.create(params)
            println("Stripe card : $stripeCard")
            card = card.copy(token = stripeCard.id)

            val result = DatabaseRepository.addNewCard(card)
            if (result.success) {
                call.respond(HttpStatusCode.OK)
            } else {
                call.respond(DefaultErrorStatus, result.message)
            }
        } catch (genericException:Exception) {
            call.respond(DefaultErrorStatus, "$GENERIC_ERROR : ${genericException.message}")
        }
    }
}