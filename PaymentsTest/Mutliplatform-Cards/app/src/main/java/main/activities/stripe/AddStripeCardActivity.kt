package main.activities.stripe

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.stripe.android.Stripe
import com.stripe.android.TokenCallback
import com.stripe.android.model.Token
import kotlinx.android.synthetic.main.activity_add_card_stripe.*
import main.R
import main.model.platform.MappedUserCard
import main.utils.CARD_OBJECT_PARAMETER
import main.utils.DEFAULT_STRING_VALUE
import main.utils.STRIPE_TEST_KEY
import java.lang.Exception

class AddStripeCardActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_add_card_stripe)

        addButton.setOnClickListener {
            val card = card_input_widget.card
            if (card != null) {
                startSending()
                Stripe(applicationContext, STRIPE_TEST_KEY)
                    .createToken(card, object : TokenCallback {
                        override fun onSuccess(result: Token) {
                            finishSending()

                            val newUserCard = MappedUserCard(result.id,
                                card.number ?: DEFAULT_STRING_VALUE,
                                card.cvc ?: DEFAULT_STRING_VALUE,
                                result.id)

                            val parameterIntent = Intent()
                            parameterIntent.putExtra(CARD_OBJECT_PARAMETER, newUserCard)
                            setResult(Activity.RESULT_OK, parameterIntent)
                            finish()
                        }

                        override fun onError(e: Exception) {
                            finishSending()
                            showError("Error creating stripe token : ${e.message}")
                            setResult(Activity.RESULT_CANCELED)
                            finish()
                        }
                    })
            } else {
                showError("Stripe card is null!")
            }
        }

        cancelButton.setOnClickListener {
            setResult(Activity.RESULT_CANCELED)
            finish()
        }
    }

    private fun startSending() {
        progressBar.visibility = View.VISIBLE
        addButton.isEnabled = false
        cancelButton.isEnabled = false
    }

    private fun finishSending() {
        progressBar.visibility = View.INVISIBLE
        addButton.isEnabled = true
        cancelButton.isEnabled = true
    }

    private fun showError(text:String) {
        Toast.makeText(applicationContext, text, Toast.LENGTH_SHORT).show()
    }
}