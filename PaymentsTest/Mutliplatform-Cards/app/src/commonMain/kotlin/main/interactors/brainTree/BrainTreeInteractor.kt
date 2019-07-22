package main.interactors.brainTree

import main.interfaces.IBrainTreePresenter
import main.model.BrainTreeNonce
import main.repositories.BrainTreeRepository

class BrainTreeInteractor(private val presenter: IBrainTreePresenter) {

    fun getClientToken() {
        presenter.loadingProcessStarted()
        BrainTreeRepository.getClientToken( { token ->
            presenter.loadingProcessFinished()
            presenter.updateUserToken(token)
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }

    fun sendNonce(nonce: BrainTreeNonce) {
        presenter.loadingProcessStarted()
        BrainTreeRepository.sendNonce(nonce, {
            presenter.loadingProcessFinished()
        } , { _, errorText ->
            presenter.loadingProcessFinished()
            presenter.displayErrorMessage(errorText)
        })
    }
}