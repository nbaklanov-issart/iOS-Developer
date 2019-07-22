package main.utils

import main.model.BrainTreeToken
import main.model.UserCard
import overcoming.model.enum.ApiResponseEnum

typealias BasicHandler = () -> Unit


typealias BrainTreeTokenHandler = (token:BrainTreeToken) -> Unit

typealias CardsListHandler = (List<UserCard>) -> Unit
typealias ErrorHandler = (ApiResponseEnum, String) -> Unit

val STRIPE_TEST_KEY:String = "pk_test_XdTZ07YMcoEa8zXpigNFXO0L"
val DEFAULT_STRING_VALUE:String = ""

val MESSAGE_TEXT_PARAMETER:String = "message_text"
val CARD_OBJECT_PARAMETER:String = "message_text"