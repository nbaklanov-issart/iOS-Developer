package com.iosdeveloper.repositpries

import com.iosdeveloper.model.Card
import com.iosdeveloper.model.ClientCard
import com.iosdeveloper.model.TransactionResult
import com.iosdeveloper.utils.GENERIC_INSERT_ERROR
import com.iosdeveloper.utils.WRONG_ID_FORMAT
import com.zaxxer.hikari.HikariConfig
import com.zaxxer.hikari.HikariDataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.jetbrains.exposed.sql.Database
import org.jetbrains.exposed.sql.SchemaUtils.create
import org.jetbrains.exposed.sql.insert
import org.jetbrains.exposed.sql.selectAll
import org.jetbrains.exposed.sql.transactions.transaction
import java.lang.NumberFormatException

object DatabaseRepository {
    fun init() {
        Database.connect(hikari())
        transaction {
            create(ClientCard)
        }
    }

    fun getAllCards():List<Card> {
        return transaction {
            ClientCard.selectAll().map {
                Card(id = it[ClientCard.id].toString(),
                    number = it[ClientCard.number],
                    cvv = it[ClientCard.cvv],
                    token = it[ClientCard.token],
                    default = it[ClientCard.default])
            }

        }
    }

    fun addNewCard(newCard:Card):TransactionResult {
        var result = TransactionResult()
        transaction {
            ClientCard.insert {
                try {
                    it[id] = newCard.id.toInt()
                    it[number] = newCard.number
                    it[token] = newCard.token
                    it[default] = newCard.default
                    it[cvv] = newCard.cvv
                    result = result.copy(success = true)
                } catch (idFormatException:NumberFormatException) {
                    result = result.copy(success = false, message = WRONG_ID_FORMAT)
                } catch (genericException:Exception) {
                    result = result.copy(success = false, message = "$GENERIC_INSERT_ERROR : ${genericException.localizedMessage}" )
                }
            }
        }
        return result
    }

    private fun hikari(): HikariDataSource {
        val config = HikariConfig("/hikari.properties")
        return HikariDataSource(config)
    }

    suspend fun <T> dbQuery(
        block: () -> T): T =
        withContext(Dispatchers.IO) {
            transaction { block() }
        }

}
