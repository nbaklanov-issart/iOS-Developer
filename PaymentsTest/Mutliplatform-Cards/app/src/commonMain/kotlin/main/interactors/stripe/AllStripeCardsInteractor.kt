package main.interactors.stripe

import main.interfaces.IStripeAllCardsPresenter
import main.model.StripeUserCard
import main.repositories.StripeRepository

class AllStripeCardsInteractor(private val presenter:IStripeAllCardsPresenter) {
    fun register() {
        presenter.loadingProcessStarted()
        StripeRepository.register( {
            println("REGISTERED")
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage("REGISTERED")
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }

    fun login() {
        presenter.loadingProcessStarted()
        StripeRepository.login( {
            println("LOGGED")
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage("LOGGED")
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }

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

    fun sendNewCard(cardStripe:StripeUserCard) {
        presenter.loadingProcessStarted()
        StripeRepository.addNewCard(cardStripe, {
            presenter.loadingProcessFinished()
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }

    fun payUsingCard(cardStripe:StripeUserCard) {
        presenter.loadingProcessStarted()
        StripeRepository.payUsingCard(cardStripe, {
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage("suck-cess")
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }
}