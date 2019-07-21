package main.utils

import main.model.Card
import overcoming.model.enum.ApiResponseEnum

typealias CardsListHandler = (List<Card>) -> Unit
typealias ErrorHandler = (ApiResponseEnum, String) -> Unit

val DEFAULT_STRING_VALUE:String = ""