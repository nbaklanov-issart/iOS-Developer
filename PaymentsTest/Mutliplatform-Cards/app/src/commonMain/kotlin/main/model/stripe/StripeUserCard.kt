package main.model

import kotlinx.serialization.Serializable

@Serializable
data class StripeUserCard(val id:String,
                          val number:String,
                          val cvv:String,
                          val token:String)