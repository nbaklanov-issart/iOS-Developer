package main.fragments

import main.model.UserCard

interface CardsRowListener {
    fun onRowSelected(card:UserCard)
}