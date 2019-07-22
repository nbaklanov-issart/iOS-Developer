package com.iosdeveloper.payments

import com.braintreegateway.BraintreeGateway
import com.braintreegateway.Environment
import com.braintreegateway.Transaction
import com.braintreegateway.TransactionRequest
import com.iosdeveloper.utils.BRAIN_TREE_MERCHANT
import com.iosdeveloper.utils.BRAIN_TREE_PRIVATE_KEY
import com.iosdeveloper.utils.BRAIN_TREE_PUBLIC_KEY

object BrainTreePayment {
    private var gateaway:BraintreeGateway = BraintreeGateway(Environment.SANDBOX, BRAIN_TREE_MERCHANT, BRAIN_TREE_PUBLIC_KEY, BRAIN_TREE_PRIVATE_KEY)

    fun getClientToken():String {
        return gateaway.clientToken().generate()
    }

    fun getGateway():BraintreeGateway {
        return gateaway
    }
}