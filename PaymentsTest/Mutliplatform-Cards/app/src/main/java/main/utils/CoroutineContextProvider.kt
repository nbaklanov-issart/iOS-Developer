package main.utils

import kotlinx.coroutines.Dispatchers
import kotlin.coroutines.CoroutineContext

actual class CoroutineContextProvider actual constructor() {
    actual companion object {
        actual fun provideContext(): CoroutineContext {
            return Dispatchers.Default
        }
    }
}