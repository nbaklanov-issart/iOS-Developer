package com.iosdeveloper.model

import org.jetbrains.exposed.sql.Table

object ClientCard : Table() {
    val id = integer("id").primaryKey().autoIncrement()
    val number = varchar("number", 255)
    val cvv = varchar("cvv", 3)
    val token = varchar("token", 255)
    val default = bool("default")
}