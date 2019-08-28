package main.repositories

import io.ktor.http.HttpHeaders.Date
import main.model.StripeUserCard
import main.model.user.MyUser
import main.network.stripe.AddStripeCardApi
import main.network.GetAllStripeCardsApi
import main.network.StripeChargeApi
import main.network.user.LoginApi
import main.network.user.RegistrationApi
import main.utils.BasicHandler
import main.utils.CardsListHandler
import main.utils.ErrorHandler
import kotlin.random.Random

object StripeRepository {
    fun getAllCards(callback:CardsListHandler, errorCallback:ErrorHandler) {
        GetAllStripeCardsApi(callback, errorCallback).getAllCards()
    }

    fun addNewCard(cardStripe:StripeUserCard, callback:BasicHandler, errorCallback:ErrorHandler) {
        AddStripeCardApi(callback, errorCallback).addNewCard(cardStripe)
    }

    fun payUsingCard(cardStripe: StripeUserCard, callback:BasicHandler, errorCallback:ErrorHandler) {
        StripeChargeApi(callback, errorCallback).chargeUsingCard(cardStripe)
    }

    fun register(callback:BasicHandler, errorCallback:ErrorHandler) {
        RegistrationApi(callback, errorCallback).register(MyUser(Random.nextInt().toString(), "Password"))
    }

    fun login(callback:BasicHandler, errorCallback:ErrorHandler) {
        LoginApi(callback, errorCallback).login(MyUser("User", "Password"))
    }
}