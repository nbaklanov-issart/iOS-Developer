package main.model

import kotlinx.serialization.Serializable

@Serializable
data class StripeChargeParameters(val chargeSourceId:Int)