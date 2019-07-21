package main.model.platform

import main.model.UserCard
import java.io.Serializable

data class MappedUserCard(val id:String,
                          val number:String,
                          val cvv:String,
                          val token:String) : Serializable {
    companion object {
        fun toMappedCard(value:UserCard):MappedUserCard {
            return MappedUserCard(value.id, value.number, value.cvv, value.token)
        }
        fun fromMappedCard(value:MappedUserCard):UserCard {
            return UserCard(value.id, value.number, value.cvv, value.token)
        }
    }
}