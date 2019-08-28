package com.iosdeveloper.utils

import io.ktor.http.HttpStatusCode

val DefaultErrorStatus:HttpStatusCode = HttpStatusCode.BadRequest
val NotFoundErrorStatus:HttpStatusCode = HttpStatusCode.NotFound
val AlreadyExistErrorStatus:HttpStatusCode = HttpStatusCode.BadGateway