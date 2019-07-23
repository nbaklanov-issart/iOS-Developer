package main.interfaces

import main.model.StripeUserCard

interface IStripeAllCardsPresenter : IBasePresenter, ILoadingPresenter {
    fun updateCardList(stripeUserCards:List<StripeUserCard>)
}