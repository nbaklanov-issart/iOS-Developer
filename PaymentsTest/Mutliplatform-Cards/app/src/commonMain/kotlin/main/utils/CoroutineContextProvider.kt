package main.utils

import kotlin.coroutines.CoroutineContext

expect class CoroutineContextProvider() {
    companion object {
        fun provideContext(): CoroutineContext
    }
}