package main.presenters.braintree

import androidx.lifecycle.MutableLiveData
import com.braintreepayments.api.models.PaymentMethodNonce
import main.interactors.brainTree.BrainTreeInteractor
import main.interfaces.IBrainTreePresenter
import main.model.BrainTreeNonce
import main.model.BrainTreeToken
import main.utils.DEFAULT_STRING_VALUE

class BrainTreePresenter() : IBrainTreePresenter {
    private val interactor = BrainTreeInteractor(this)

    val errorMessage: MutableLiveData<String> = MutableLiveData()
    val progressBarVisibility: MutableLiveData<Boolean> = MutableLiveData()
    val payPalEnabled: MutableLiveData<Boolean> = MutableLiveData()

    val brainTreeToken:MutableLiveData<BrainTreeToken> = MutableLiveData()

    init {
        errorMessage.postValue(DEFAULT_STRING_VALUE)
        progressBarVisibility.postValue(false)
        payPalEnabled.postValue(true)
    }

    fun attachView() {}

    fun detachView() {}

    fun tryPayPal() {
        interactor.getClientToken()
    }

    fun trySendNonce(nonce: BrainTreeNonce) {
        interactor.sendNonce(nonce)
    }

    override fun updateUserToken(token: BrainTreeToken) {
        brainTreeToken.postValue(token)
    }

    override fun displayErrorMessage(errorText: String) {
        errorMessage.postValue(errorText)
    }

    override fun loadingProcessStarted() {
        progressBarVisibility.postValue(true)
        payPalEnabled.postValue(false)
    }

    override fun loadingProcessFinished() {
        progressBarVisibility.postValue(false)
        payPalEnabled.postValue(true)
    }
}