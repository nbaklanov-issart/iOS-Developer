package com.iosdeveloper

import com.iosdeveloper.repositpries.DatabaseRepository
import com.iosdeveloper.routes.cards
import com.iosdeveloper.routes.home
import io.ktor.application.*
import io.ktor.features.ContentNegotiation
import io.ktor.gson.gson
import io.ktor.routing.routing
import java.text.DateFormat

fun main(args: Array<String>) {
    io.ktor.server.netty.EngineMain.main(args)
}

@Suppress("unused")
@kotlin.jvm.JvmOverloads
fun Application.module(testing: Boolean = false) {

    DatabaseRepository.init()

    install(ContentNegotiation) {
        gson {
            setDateFormat(DateFormat.LONG)
            setPrettyPrinting()
        }
    }

    routing {
        home()
        cards()
    }
}

