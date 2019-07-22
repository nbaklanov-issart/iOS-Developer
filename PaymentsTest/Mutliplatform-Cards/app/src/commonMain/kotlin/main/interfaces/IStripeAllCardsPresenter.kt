package main.interfaces

import main.model.UserCard

interface IStripeAllCardsPresenter : IBasePresenter, ILoadingPresenter {
    fun updateCardList(userCards:List<UserCard>)
}