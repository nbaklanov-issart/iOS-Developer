package main.presenters.stripe

import androidx.lifecycle.MutableLiveData
import main.interactors.stripe.AllStripeCardsInteractor
import main.interfaces.IStripeAllCardsPresenter
import main.model.StripeUserCard
import main.utils.DEFAULT_STRING_VALUE

class StripeCardsListPresenter : IStripeAllCardsPresenter {
    private val interactor = AllStripeCardsInteractor(this)

    val cardsList:MutableLiveData<List<StripeUserCard>> = MutableLiveData()
    val errorMessage:MutableLiveData<String> = MutableLiveData()

    val cardsListVisibility:MutableLiveData<Boolean> = MutableLiveData()
    val progressBarVisibility:MutableLiveData<Boolean> = MutableLiveData()
    val emptyLabelVisibility:MutableLiveData<Boolean> = MutableLiveData()
    val addStripeEnabled:MutableLiveData<Boolean> = MutableLiveData()

    init {
        cardsList.postValue(emptyList())
        errorMessage.postValue(DEFAULT_STRING_VALUE)

        cardsListVisibility.postValue(false)
        progressBarVisibility.postValue(false)
        emptyLabelVisibility.postValue(false)
        addStripeEnabled.postValue(false)
    }

    fun attachView() {
        interactor.getAllCards()
    }

    fun detachView() {}

    fun addNewCard(cardStripe:StripeUserCard) {
        interactor.sendNewCard(cardStripe)
    }

    fun payUsingCard(cardStripe:StripeUserCard) {
        interactor.payUsingCard(cardStripe)
    }

    override fun displayErrorMessage(errorText: String) {
        errorMessage.postValue(errorText)
    }

    override fun updateCardList(stripeUserCards: List<StripeUserCard>) {
        cardsList.postValue(stripeUserCards)
        cardsListVisibility.postValue(stripeUserCards.isNotEmpty())
        emptyLabelVisibility.postValue(stripeUserCards.isEmpty())
    }

    override fun loadingProcessStarted() {
        progressBarVisibility.postValue(true)
        addStripeEnabled.postValue(false)
    }

    override fun loadingProcessFinished() {
        progressBarVisibility.postValue(false)
        addStripeEnabled.postValue(true)
    }
}