package com.iosdeveloper.model

import com.iosdeveloper.utils.DEFAULT_STRING_VALUE

data class TransactionResult(val success:Boolean = false,
                             val message:String = DEFAULT_STRING_VALUE)