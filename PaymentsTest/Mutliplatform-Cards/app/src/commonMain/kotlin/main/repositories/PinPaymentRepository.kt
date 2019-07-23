package main.repositories

import main.model.pinPayment.PinPaymentNotAddedCard
import main.network.pinPayments.PinPaymentAddCardApi
import main.utils.ErrorHandler
import main.utils.PinPaymentsAddCardHandler

object PinPaymentRepository {
    fun getCardToken(card:PinPaymentNotAddedCard, callback:PinPaymentsAddCardHandler, errorHandler:ErrorHandler) {
        PinPaymentAddCardApi(callback, errorHandler).sendCard(card)
    }
}