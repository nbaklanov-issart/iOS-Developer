package main.interactors

import main.interfaces.IAllCardsPresenter
import main.repositories.CardsRepository

class AllCardsInteractor(val presenter:IAllCardsPresenter) {
    fun getAllCards() {

        presenter.loadingProcessStarted()
        CardsRepository().getAllCards( { cardsList ->
            presenter.loadingProcessFinished()
            presenter.updateCardList(cardsList)
        } , { responseStatus, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }
}