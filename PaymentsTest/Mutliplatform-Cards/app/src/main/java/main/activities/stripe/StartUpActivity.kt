package main.activities.stripe

import android.content.Intent
import android.os.Bundle
import android.os.PersistableBundle
import androidx.appcompat.app.AppCompatActivity
import main.R
import main.activities.MainActivity

class StartUpActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_start_up)

        val intent = Intent(applicationContext, MainActivity::class.java)
        startActivity(intent)
    }
}