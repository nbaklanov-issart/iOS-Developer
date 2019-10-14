package sample

import io.ktor.client.HttpClient
import io.ktor.client.request.get
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch

class RequestExample {
    fun performRequest() {
        GlobalScope.launch(CoroutineContextProvider.provideContext()) {
            val client = HttpClient()
            val response = client.get<String>("http://172.17.9.110:8080/")
            println(response)
            client.close()
        }
    }
}