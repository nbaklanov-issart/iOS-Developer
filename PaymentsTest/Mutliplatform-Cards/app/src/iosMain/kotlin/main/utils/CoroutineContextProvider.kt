package main.utils

import platform.darwin.dispatch_get_main_queue
import kotlin.coroutines.CoroutineContext

actual class CoroutineContextProvider actual constructor() {
    actual companion object {
        actual fun provideContext(): CoroutineContext {
            return NsQueueDispatcher(dispatch_get_main_queue())
        }
    }
}