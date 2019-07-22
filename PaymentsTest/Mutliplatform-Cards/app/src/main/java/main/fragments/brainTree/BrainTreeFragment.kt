package main.fragments.brainTree

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.os.Parcelable
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.lifecycle.Observer

import kotlinx.android.synthetic.main.fragment_braintree.*
import main.R
import main.presenters.braintree.BrainTreePresenter
import main.utils.MESSAGE_TEXT_PARAMETER

import com.braintreepayments.api.models.PaymentMethodNonce
import com.braintreepayments.api.exceptions.InvalidArgumentException
import com.braintreepayments.api.BraintreeFragment
import com.braintreepayments.api.dropin.DropInResult
import android.content.Intent.getIntent
import com.braintreepayments.api.dropin.DropInRequest
import main.model.BrainTreeNonce


class BrainTreeFragment : Fragment() {
    private val DROP_IN_REQUEST:Int = 1
    private val presenter = BrainTreePresenter()

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_braintree, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        presenter.attachView()

        payPal.setOnClickListener {
            presenter.tryPayPal()
        }

        bindToModel()
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        println("REquest Code  : $requestCode")
        when(requestCode) {
            DROP_IN_REQUEST -> {
                println("REsult code : $resultCode")
                if (resultCode == Activity.RESULT_OK || resultCode == Activity.RESULT_FIRST_USER) {
                    val nonce = data?.getParcelableExtra(DropInResult.EXTRA_DROP_IN_RESULT) as DropInResult
                    presenter.trySendNonce(BrainTreeNonce(nonce.paymentMethodNonce!!.nonce))
                } else {
                    showErrorMessage(data?.extras?.getString(MESSAGE_TEXT_PARAMETER) ?: "Error adding stripe card!")
                }
            }
            else -> super.onActivityResult(requestCode, resultCode, data)
        }
    }

    private fun bindToModel() {
        presenter.brainTreeToken.observe(this , Observer {
            println("TOken Here : ${it.tokenValue}")
            try {
                val dropInRequest = DropInRequest().clientToken(it.tokenValue)
                startActivityForResult(dropInRequest.getIntent(context), DROP_IN_REQUEST)
            } catch (e: InvalidArgumentException) {
                // There was an issue with your authorization string.
            }

        })
    }

    private fun showErrorMessage(errorMessage:String) {
        activity?.runOnUiThread {
            Toast.makeText(context, errorMessage, Toast.LENGTH_LONG).show()
        }
    }
}