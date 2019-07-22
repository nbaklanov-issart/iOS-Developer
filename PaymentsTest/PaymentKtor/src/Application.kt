package com.iosdeveloper

import com.iosdeveloper.model.StripeClientObject
import com.iosdeveloper.repositpries.DatabaseRepository
import com.iosdeveloper.routes.brainTree
import com.iosdeveloper.routes.home
import com.iosdeveloper.routes.stripe
import com.iosdeveloper.utils.CREATE_STRIPE_CUSTOMER_ERROR
import com.iosdeveloper.utils.STRIPE_DESCRIPTION_PARAMETER
import com.iosdeveloper.utils.STRIPE_TEST_TOKEN
import com.stripe.Stripe
import io.ktor.application.*
import io.ktor.features.ContentNegotiation
import io.ktor.gson.gson
import io.ktor.routing.routing
import java.text.DateFormat
import com.stripe.model.Customer
import java.lang.Exception
import java.util.HashMap



fun main(args: Array<String>) {
    io.ktor.server.netty.EngineMain.main(args)
}

@Suppress("unused")
@kotlin.jvm.JvmOverloads
fun Application.module(testing: Boolean = false) {

    Stripe.apiKey = STRIPE_TEST_TOKEN

    DatabaseRepository.init()
    if (!DatabaseRepository.stripeClientExist()) {
        val customerParams = HashMap<String, Any>()
        customerParams[STRIPE_DESCRIPTION_PARAMETER] = "Default stripe customer"

        try {
            val newCustomer = Customer.create(customerParams)
            DatabaseRepository.addStripeClient(StripeClientObject(0, newCustomer.id))
        } catch (exception:Exception) {
            println("$CREATE_STRIPE_CUSTOMER_ERROR : ${exception.message}")
        }
    }

    install(ContentNegotiation) {
        gson {
            setDateFormat(DateFormat.LONG)
            setPrettyPrinting()
        }
    }

    routing {
        home()
        stripe()
        brainTree()
    }
}

