package com.iosdeveloper.model

data class StripeTransactionObject(val id:String,
                                   val clientId:String,
                                   val sourceId:String,
                                   val description:String)