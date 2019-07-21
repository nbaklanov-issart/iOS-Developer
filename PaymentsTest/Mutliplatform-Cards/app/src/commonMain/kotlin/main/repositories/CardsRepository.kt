package main.repositories

import main.network.GetAllCardsApi
import main.utils.CardsListHandler
import main.utils.ErrorHandler

class CardsRepository {
    fun getAllCards(callback:CardsListHandler, errorCallback:ErrorHandler) {
        GetAllCardsApi(callback, errorCallback)
    }
}