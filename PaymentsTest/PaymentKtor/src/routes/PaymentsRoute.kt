package com.iosdeveloper.routes

import com.iosdeveloper.model.ChargeParameters
import com.iosdeveloper.model.StripeTransactionObject
import com.iosdeveloper.repositpries.DatabaseRepository
import com.iosdeveloper.utils.*
import com.stripe.exception.StripeException
import com.stripe.model.Charge
import io.ktor.application.call
import io.ktor.request.receive
import io.ktor.response.respond
import io.ktor.routing.Route
import io.ktor.routing.post
import com.oracle.util.Checksums.update
import java.util.HashMap
import com.stripe.model.Customer
import io.ktor.http.HttpStatusCode


private val PAYMENT_ROUTE:String = "/payments/shutupandtakemymoney"

fun Route.charges() {
    post(PAYMENT_ROUTE) {
        try {
            val paymentParameters = call.receive<ChargeParameters>()
            val card = DatabaseRepository.getCard(paymentParameters.chargeSourceId)

            val stripeDefaultCustomer = DatabaseRepository.getStripeClient()
            val customer = Customer.retrieve(stripeDefaultCustomer.stripeId)
            println("CUSTOMER : $customer")
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

            println("Suck-cess, biatch! : $successCharge")
            call.respond(HttpStatusCode.OK, "Suck-cess, biatch!")


        } catch (chargeException:StripeException) {
            call.respond(DefaultErrorStatus, "$CHARGE_STRIPE_ERROR : ${chargeException.message}")
        } catch (genericException:Exception) {
            call.respond(DefaultErrorStatus, "$GENERIC_ERROR : ${genericException.message}")
        }
    }
}