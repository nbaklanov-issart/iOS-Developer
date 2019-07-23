package main.model.pinPayment

import kotlinx.serialization.Serializable
import main.utils.DEFAULT_STRING_VALUE

@Serializable
data class PinPaymentNotAddedCard(val publishable_api_key:String = DEFAULT_STRING_VALUE,
                                  val number:String,
                                  val expiry_month:String,
                                  val expiry_year:String,
                                  val cvc:String,
                                  val name:String,
                                  val address_line1:String,
                                  val address_city:String,
                                  val address_state:String,
                                  val address_country:String)