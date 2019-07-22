package main.fragments.stripe

import main.model.UserCard

interface CardsRowListener {
    fun onRowSelected(card:UserCard)
}