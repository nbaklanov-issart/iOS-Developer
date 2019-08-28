package main.model.user

import kotlinx.serialization.Serializable

@Serializable
data class MyUser(val login:String, val password:String)