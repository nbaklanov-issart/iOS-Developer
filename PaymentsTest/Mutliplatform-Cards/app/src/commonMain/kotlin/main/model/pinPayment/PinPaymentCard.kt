package main.model.pinPayment

import main.utils.DEFAULT_STRING_VALUE

data class PinPaymentCard (val token:String = DEFAULT_STRING_VALUE,
                           val number:String,
                           val expiryMonth:String,
                           val expiryYear:String,
                           val cvc:String,
                           val name:String,
                           val addressLine:String,
                           val addressCity:String,
                           val addressCountry:String)