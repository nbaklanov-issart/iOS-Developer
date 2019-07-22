package main.utils

import main.model.UserCard
import overcoming.model.enum.ApiResponseEnum

typealias BasicHandler = () -> Unit
typealias CardsListHandler = (List<UserCard>) -> Unit
typealias ErrorHandler = (ApiResponseEnum, String) -> Unit

val STRIPE_TEST_KEY:String = ""
val DEFAULT_STRING_VALUE:String = ""

val MESSAGE_TEXT_PARAMETER:String = "message_text"
val CARD_OBJECT_PARAMETER:String = "message_text"