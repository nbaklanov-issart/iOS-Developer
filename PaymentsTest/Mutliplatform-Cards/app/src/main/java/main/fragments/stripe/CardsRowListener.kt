package main.fragments.stripe

import main.model.StripeUserCard

interface CardsRowListener {
    fun onRowSelected(cardStripe:StripeUserCard)
}