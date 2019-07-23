package main.interactors.pinPayment

import main.interfaces.IPinPaymentPresenter
import main.model.pinPayment.PinPaymentNotAddedCard
import main.repositories.PinPaymentRepository

class PinPaymentInteractor(private val presenter:IPinPaymentPresenter) {
    fun addCard(card:PinPaymentNotAddedCard) {
        presenter.loadingProcessStarted()
        PinPaymentRepository.getCardToken(card, { cardInfo ->
            presenter.loadingProcessFinished()


        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }
}