package com.iosdeveloper.payments

import com.braintreegateway.BraintreeGateway
import com.braintreegateway.Environment

object BrainTreePayment {
    private var gateaway:BraintreeGateway = BraintreeGateway(Environment.SANDBOX, "", "", "")

    fun getClientToken():String {
        return gateaway.clientToken().generate()
    }
}