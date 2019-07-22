package main.interactors.stripe

import main.interfaces.IStripeAllCardsPresenter
import main.model.UserCard
import main.repositories.StripeRepository

class AllStripeCardsInteractor(private val presenter:IStripeAllCardsPresenter) {
    fun getAllCards() {
        presenter.loadingProcessStarted()
        StripeRepository.getAllCards( { cardsList ->
            presenter.loadingProcessFinished()
            presenter.updateCardList(cardsList)
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }

    fun sendNewCard(card:UserCard) {
        presenter.loadingProcessStarted()
        StripeRepository.addNewCard(card, {
            presenter.loadingProcessFinished()
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }

    fun payUsingCard(card:UserCard) {
        presenter.loadingProcessStarted()
        StripeRepository.payUsingCard(card, {
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage("suck-cess")
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }
}