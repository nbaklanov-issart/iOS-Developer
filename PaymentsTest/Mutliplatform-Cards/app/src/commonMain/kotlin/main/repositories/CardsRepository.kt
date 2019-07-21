package main.repositories

import main.model.UserCard
import main.network.AddCardApi
import main.network.GetAllCardsApi
import main.utils.BasicHandler
import main.utils.CardsListHandler
import main.utils.ErrorHandler

class CardsRepository {
    fun getAllCards(callback:CardsListHandler, errorCallback:ErrorHandler) {
        GetAllCardsApi(callback, errorCallback).getAllCards()
    }

    fun addNewCard(card:UserCard, callback:BasicHandler, errorCallback:ErrorHandler) {
        AddCardApi(callback, errorCallback).addNewCard(card)
    }
}