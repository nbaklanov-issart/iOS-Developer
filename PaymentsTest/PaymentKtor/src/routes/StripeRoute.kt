package com.iosdeveloper.routes

import com.iosdeveloper.model.StripeCard
import com.iosdeveloper.model.StripeChargeParameters
import com.iosdeveloper.model.StripeTransactionObject
import com.iosdeveloper.repositpries.DatabaseRepository
import com.iosdeveloper.utils.*
import com.stripe.exception.StripeException
import com.stripe.model.Charge
import io.ktor.application.call
import io.ktor.http.HttpStatusCode
import io.ktor.request.receive
import io.ktor.response.respond
import io.ktor.routing.Route
import io.ktor.routing.get
import io.ktor.routing.post
import java.util.HashMap
import com.stripe.model.Customer


private val STRIPE_PAYMENT_ROUTE:String = "/payments/stripe/shutupandtakemymoney"
private val GET_ALL_STRIPE_CARDS_ROUTE:String = "/cards/stripe/getall"
private val ADD_STRIPE_CARD_ROUTE:String = "/cards/stripe/addcard"

fun Route.stripe() {
    get(GET_ALL_STRIPE_CARDS_ROUTE) {
        val allStripeCards:List<StripeCard> = DatabaseRepository.getAllStripeCards()
        call.respond(allStripeCards)
    }
    post(ADD_STRIPE_CARD_ROUTE) {
        try {
            var card = call.receive<StripeCard>()
            val stripeDefaultCustomer = DatabaseRepository.getStripeClient()
            val customer = Customer.retrieve(stripeDefaultCustomer.stripeId)
            val params = HashMap<String, Any>()

            params[STRIPE_SOURCE_PARAMETER] = card.token

            val stripeCard = customer.sources.create(params)
            card = card.copy(token = stripeCard.id)

            val result = DatabaseRepository.addNewStripeCard(card)
            if (result.success) {
                call.respond(HttpStatusCode.OK)
            } else {
                call.respond(DefaultErrorStatus, result.message)
            }
        } catch (genericException:Exception) {
            call.respond(DefaultErrorStatus, "$GENERIC_ERROR : ${genericException.message}")
        }
    }

    post(STRIPE_PAYMENT_ROUTE) {
        try {
            val paymentParameters = call.receive<StripeChargeParameters>()
            val card = DatabaseRepository.getStripeCard(paymentParameters.chargeSourceId)

            val stripeDefaultCustomer = DatabaseRepository.getStripeClient()
            val customer = Customer.retrieve(stripeDefaultCustomer.stripeId)
            val parameters = HashMap<String, Any>()
            parameters[STRIPE_DEFAULT_SOURCE_PARAMETER] = card.token
            customer.update(parameters)


            val chargeParameters = HashMap<String, Any>()
            chargeParameters.set(STRIPE_AMOUNT_PARAMETER, STRIPE_AMOUNT_VALUE_CENTS)
            chargeParameters.set(STRIPE_CURRENCY_PARAMETER, STRIPE_CURRENCY_VALUE)
            chargeParameters.set(STRIPE_DESCRIPTION_PARAMETER, STRIPE_DESCRIPTION_VALUE)
            chargeParameters.set(STRIPE_CUSTOMER_PARAMETER, customer.id)

            val successCharge = Charge.create(chargeParameters)
            val transactionObject = StripeTransactionObject(successCharge.id,
                successCharge.source.id,
                customer.id,
                successCharge.description)
            DatabaseRepository.addStripeTransaction(transactionObject)
            call.respond(HttpStatusCode.OK, "Suck-cess, biatch!")

        } catch (chargeException: StripeException) {
            call.respond(DefaultErrorStatus, "$CHARGE_STRIPE_ERROR : ${chargeException.message}")
        } catch (genericException:Exception) {
            call.respond(DefaultErrorStatus, "$GENERIC_ERROR : ${genericException.message}")
        }
    }
}