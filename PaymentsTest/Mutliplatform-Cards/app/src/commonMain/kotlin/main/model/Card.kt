package main.model

import kotlinx.serialization.Serializable

@Serializable
data class Card(val id:String,
                val number:String)