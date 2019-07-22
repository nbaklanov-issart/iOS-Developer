package main.repositories

import main.model.UserCard
import main.network.stripe.AddStripeCardApi
import main.network.GetAllStripeCardsApi
import main.network.StripeChargeApi
import main.utils.BasicHandler
import main.utils.CardsListHandler
import main.utils.ErrorHandler

object StripeRepository {
    fun getAllCards(callback:CardsListHandler, errorCallback:ErrorHandler) {
        GetAllStripeCardsApi(callback, errorCallback).getAllCards()
    }

    fun addNewCard(card:UserCard, callback:BasicHandler, errorCallback:ErrorHandler) {
        AddStripeCardApi(callback, errorCallback).addNewCard(card)
    }

    fun payUsingCard(card: UserCard, callback:BasicHandler, errorCallback:ErrorHandler) {
        StripeChargeApi(callback, errorCallback).chargeUsingCard(card)
    }
}