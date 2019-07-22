package main.model

import kotlinx.serialization.Serializable
import main.utils.DEFAULT_STRING_VALUE

@Serializable
data class BrainTreeToken(val tokenValue:String = DEFAULT_STRING_VALUE)