package main.activities

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.Navigation.findNavController
import main.R

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_layout)
    }

    override fun onSupportNavigateUp(): Boolean {
        return findNavController(this, R.id.nav_host_fragment).navigateUp()
    }
}