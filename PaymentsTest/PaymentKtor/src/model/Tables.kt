package com.iosdeveloper.model

import org.jetbrains.exposed.sql.Table

object StripeClientCard : Table() {
    val id = integer("id").primaryKey().autoIncrement()
    val number = varchar("number", 255)
    val cvv = varchar("cvv", 3)
    val token = varchar("token", 255)
}

object StripeClient : Table() {
    val id = integer("id").primaryKey().autoIncrement()
    val stripeId = varchar("stripeid", 255)
}

object StripeTransaction : Table() {
    val id = integer("id").primaryKey().autoIncrement()
    val transactionId = varchar("transactionId", 255)
    val sourceId = varchar("sourceId", 255)
    val clientId = varchar("clientId", 255)
    val description = varchar("description", 1024)
}

object PayPalTransaction : Table() {
    val id = integer("id").primaryKey().autoIncrement()
    val description = varchar("description", 1024)
    val isSuccess = bool("success")
}

object SimpleUser : Table() {
    val id = integer("id").primaryKey().autoIncrement()
    val login = varchar("login", 1024)
    val password = varchar("password", 1024)
}