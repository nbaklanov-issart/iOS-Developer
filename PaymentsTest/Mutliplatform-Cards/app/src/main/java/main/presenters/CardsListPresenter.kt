package main.presenters

import androidx.lifecycle.MutableLiveData
import main.interactors.AllCardsInteractor
import main.interfaces.IAllCardsPresenter
import main.model.Card
import main.utils.DEFAULT_STRING_VALUE

class CardsListPresenter : IAllCardsPresenter {
    private val interactor = AllCardsInteractor(this)

    val cardsList:MutableLiveData<List<Card>> = MutableLiveData()
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

    fun detachView() {

    }

    override fun displayErrorMessage(errorText: String) {
        errorMessage.postValue(errorText)
    }

    override fun updateCardList(cards: List<Card>) {
        cardsList.postValue(cards)
        cardsListVisibility.postValue(cards.isNotEmpty())
        emptyLabelVisibility.postValue(cards.isEmpty())
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