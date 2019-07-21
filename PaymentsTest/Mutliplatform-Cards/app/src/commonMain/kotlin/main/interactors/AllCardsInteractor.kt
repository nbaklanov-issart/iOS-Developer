package main.interactors

import main.interfaces.IAllCardsPresenter
import main.model.UserCard
import main.repositories.CardsRepository
import main.repositories.PaymentRepository

class AllCardsInteractor(private val presenter:IAllCardsPresenter) {
    fun getAllCards() {
        presenter.loadingProcessStarted()
        CardsRepository().getAllCards( { cardsList ->
            presenter.loadingProcessFinished()
            presenter.updateCardList(cardsList)
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }

    fun sendNewCard(card:UserCard) {
        presenter.loadingProcessStarted()
        CardsRepository().addNewCard(card, {
            presenter.loadingProcessFinished()
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }

    fun payUsingCard(card:UserCard) {
        presenter.loadingProcessStarted()
        PaymentRepository().payUsingCard(card, {
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage("suck-cess")
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }
}