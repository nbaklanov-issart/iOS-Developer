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
                                     @SerialName("issuing_country")
                                     val month:Int,
                                     @SerialName("issuing_country")
                                     val year:Int,
                                     val name:String,
                                     @SerialName("issuing_country")
                                     val address1:String,
                                     @SerialName("issuing_country")
                                     val city:String,
                                     @SerialName("issuing_country")
                                     val state:String,
                                     @SerialName("issuing_country")
                                     val coutry:String,
                                     val address2:String = DEFAULT_STRING_VALUE,
                                     @SerialName("issuing_country")
                                     val postcode:String = DEFAULT_STRING_VALUE,
                                     @SerialName("issuing_country")
                                     val customerToken:String = DEFAULT_STRING_VALUE,
                                     val primary:Boolean = false)
