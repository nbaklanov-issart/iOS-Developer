package main.interactors.pinPayment

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import main.utils.DEFAULT_STRING_VALUE

@Serializable
data class PinPaymentAddCardResponse(val token:String,
                                     val scheme:String,
                                     @SerialName("display_number")
                                     val displayNumber:String,
                                     @SerialName("issuing_country")
                                     val country:String,

                                     val month:Int,

                                     val year:Int,
                                     val name:String,

                                     val address1:String,

                                     val city:String,

                                     val state:String,

                                     val coutry:String,
                                     val address2:String = DEFAULT_STRING_VALUE,

                                     val postcode:String = DEFAULT_STRING_VALUE,

                                     val customerToken:String = DEFAULT_STRING_VALUE,
                                     val primary:Boolean = false)
