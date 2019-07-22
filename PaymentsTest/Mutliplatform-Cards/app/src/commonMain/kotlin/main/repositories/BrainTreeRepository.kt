package main.repositories

import main.model.BrainTreeNonce
import main.network.BrainTreeSendNonceApi
import main.network.BrainTreeTokenApi
import main.utils.BasicHandler
import main.utils.BrainTreeTokenHandler
import main.utils.ErrorHandler

object BrainTreeRepository {
    fun getClientToken(callback:BrainTreeTokenHandler, errorCallback:ErrorHandler) {
        BrainTreeTokenApi(callback, errorCallback).getUserToken()
    }

    fun sendNonce(nonce: BrainTreeNonce, callback:BasicHandler, errorCallback:ErrorHandler) {
        BrainTreeSendNonceApi(callback, errorCallback).postNonce(nonce)
    }
}