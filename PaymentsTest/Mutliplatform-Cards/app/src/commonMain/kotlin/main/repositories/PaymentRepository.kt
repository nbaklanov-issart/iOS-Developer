package main.repositories

import main.model.UserCard
import main.network.ChargeApi
import main.utils.BasicHandler
import main.utils.ErrorHandler

class PaymentRepository {
    fun payUsingCard(card: UserCard, callback:BasicHandler, errorCallback:ErrorHandler) {
        ChargeApi(callback, errorCallback).chargeUsingCard(card)
    }
}