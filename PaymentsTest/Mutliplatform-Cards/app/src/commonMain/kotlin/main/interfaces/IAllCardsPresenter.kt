package main.interfaces

import main.model.Card

interface IAllCardsPresenter {
    fun updateCardList(cards:List<Card>)

    fun loadingProcessStarted()
    fun loadingProcessFinished()
    fun displayErrorMessage(errorText:String)
}