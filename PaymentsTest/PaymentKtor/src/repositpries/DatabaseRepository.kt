package com.iosdeveloper.repositpries

import com.iosdeveloper.model.*
import com.iosdeveloper.model.user.MyUser
import com.iosdeveloper.utils.GENERIC_INSERT_ERROR
import com.sun.org.apache.xpath.internal.operations.Bool
import com.zaxxer.hikari.HikariConfig
import com.zaxxer.hikari.HikariDataSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.h2.engine.User
import org.jetbrains.exposed.sql.Database
import org.jetbrains.exposed.sql.SchemaUtils.create
import org.jetbrains.exposed.sql.insert
import org.jetbrains.exposed.sql.select
import org.jetbrains.exposed.sql.selectAll
import org.jetbrains.exposed.sql.transactions.transaction

object DatabaseRepository {
    fun init() {
        Database.connect(hikari())
        transaction {
            create(StripeClientCard)
            create(StripeClient)
            create(StripeTransaction)
            create(PayPalTransaction)
            create(SimpleUser)
        }
    }

    fun checkSimpleUser(inputLogin:String) : Boolean {
        val usersList = transaction {
            SimpleUser.select { SimpleUser.login eq  inputLogin}.map {
                MyUser(login = it[SimpleUser.login],
                    password = it[SimpleUser.password])
            }
        }
        return usersList.isNotEmpty()
    }

    fun addSimpleUser(user:MyUser) : TransactionResult {
        var result = TransactionResult()
        transaction {
            SimpleUser.insert {
                try {
                    it[login] = user.login
                    it[password] = user.password
                    result = result.copy(success = true)
                } catch (genericException:Exception) {
                    result = result.copy(success = false, message = "$GENERIC_INSERT_ERROR : ${genericException.localizedMessage}" )
                }
            }
        }
        return result
    }

    fun addPayPalTransaction(desc:String, success:Boolean):TransactionResult {
        var result = TransactionResult()
        transaction {
            PayPalTransaction.insert {
                try {
                    it[description] = desc
                    it[isSuccess] = success
                    result = result.copy(success = true)
                } catch (genericException:Exception) {
                    result = result.copy(success = false, message = "$GENERIC_INSERT_ERROR : ${genericException.localizedMessage}" )
                }
            }
        }
        return result
    }

    fun stripeClientExist():Boolean {
        val usersList = transaction {
            StripeClient.selectAll().map {
                StripeClientObject(id = it[StripeClient.id],
                    stripeId = it[StripeClient.stripeId])
            }
        }
        return usersList.isNotEmpty()
    }

    fun addStripeClient(client:StripeClientObject):TransactionResult {
        var result = TransactionResult()
        transaction {
            StripeClient.insert {
                try {
                    it[stripeId] = client.stripeId
                    result = result.copy(success = true)
                } catch (genericException:Exception) {
                    result = result.copy(success = false, message = "$GENERIC_INSERT_ERROR : ${genericException.localizedMessage}" )
                }
            }
        }
        return result
    }

    fun getStripeClient():StripeClientObject {
        return transaction {
            StripeClient.selectAll().map {
                StripeClientObject(id = it[StripeClient.id],
                    stripeId = it[StripeClient.stripeId])
            }.first()
        }
    }

    fun addStripeTransaction(transaction:StripeTransactionObject):TransactionResult {
        var result = TransactionResult()
        transaction {
            StripeTransaction.insert {
                try {
                    it[transactionId] = transaction.id
                    it[clientId] = transaction.clientId
                    it[sourceId] = transaction.sourceId
                    it[description] = transaction.description
                    result = result.copy(success = true)
                } catch (genericException:Exception) {
                    result = result.copy(success = false, message = "$GENERIC_INSERT_ERROR : ${genericException.localizedMessage}" )
                }
            }
        }
        return result
    }

    fun getAllStripeCards():List<StripeCard> {
        return transaction {
            StripeClientCard.selectAll().map {
                StripeCard(id = it[StripeClientCard.id].toString(),
                    number = it[StripeClientCard.number],
                    cvv = it[StripeClientCard.cvv],
                    token = it[StripeClientCard.token])
            }

        }
    }

    fun getStripeCard(id:Int):StripeCard {
        return transaction {
            StripeClientCard.select{ StripeClientCard.id eq id }
                .map { StripeCard(id = it[StripeClientCard.id].toString(),
                            number = it[StripeClientCard.number],
                            cvv = it[StripeClientCard.cvv],
                            token = it[StripeClientCard.token]) }
                .first()
        }
    }

    fun addNewStripeCard(newStripeCard:StripeCard):TransactionResult {
        var result = TransactionResult()
        transaction {
            StripeClientCard.insert {
                try {
                    it[number] = newStripeCard.number
                    it[token] = newStripeCard.token
                    it[cvv] = newStripeCard.cvv
                    result = result.copy(success = true)
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
