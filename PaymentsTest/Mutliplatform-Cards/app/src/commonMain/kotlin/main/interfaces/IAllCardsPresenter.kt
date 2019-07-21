package main.interfaces

import main.model.UserCard

interface IAllCardsPresenter {
    fun updateCardList(userCards:List<UserCard>)

    fun loadingProcessStarted()
    fun loadingProcessFinished()
    fun displayErrorMessage(errorText:String)
}