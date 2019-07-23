package main.utils

import main.interactors.pinPayment.PinPaymentAddCardResponse
import main.model.BrainTreeToken
import main.model.StripeUserCard
import overcoming.model.enum.ApiResponseEnum

typealias BasicHandler = () -> Unit

typealias PinPaymentsAddCardHandler = (cardData:PinPaymentAddCardResponse) -> Unit

typealias BrainTreeTokenHandler = (token:BrainTreeToken) -> Unit

typealias CardsListHandler = (List<StripeUserCard>) -> Unit
typealias ErrorHandler = (ApiResponseEnum, String) -> Unit

val PIN_PAYMENTS_KEY:String = "pk_7z0iYF47W3Eb4_1Tgc6HVQ"

val STRIPE_TEST_KEY:String = "pk_test_XdTZ07YMcoEa8zXpigNFXO0L"
val DEFAULT_STRING_VALUE:String = ""

val MESSAGE_TEXT_PARAMETER:String = "message_text"
val CARD_OBJECT_PARAMETER:String = "message_text"