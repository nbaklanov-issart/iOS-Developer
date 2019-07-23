package main.fragments.stripe

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.Observer
import androidx.recyclerview.widget.LinearLayoutManager
import kotlinx.android.synthetic.main.fragment_cards_list.*
import main.R
import main.activities.stripe.AddStripeCardActivity
import main.model.StripeUserCard
import main.model.platform.MappedUserCard
import main.presenters.stripe.StripeCardsListPresenter
import main.utils.CARD_OBJECT_PARAMETER
import main.utils.DEFAULT_STRING_VALUE
import main.utils.MESSAGE_TEXT_PARAMETER

class CardsFragment : Fragment(), CardsRowListener {
    private val STRIPE_ACTIVITY_RESULT:Int = 0
    private val presenter = StripeCardsListPresenter()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_cards_list, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        presenter.attachView()

        cardslist.layoutManager = LinearLayoutManager(context!!)

        addStripe.setOnClickListener {
            val addStripeIntent = Intent(context, AddStripeCardActivity::class.java)
            startActivityForResult(addStripeIntent, STRIPE_ACTIVITY_RESULT)
        }
        bindToModel()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        presenter.detachView()
        unboundFromModel()
    }

    override fun onRowSelected(cardStripe: StripeUserCard) {
        presenter.payUsingCard(cardStripe)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        when(requestCode) {
            STRIPE_ACTIVITY_RESULT -> {
                if (resultCode == Activity.RESULT_OK) {
                    val mappedCard:MappedUserCard? = data?.extras?.getSerializable(CARD_OBJECT_PARAMETER) as MappedUserCard
                    if (mappedCard != null) {
                        presenter.addNewCard(MappedUserCard.fromMappedCard(mappedCard))
                    } else {
                        showErrorMessage( "Error adding stripe card!")
                    }
                } else {
                    showErrorMessage(data?.extras?.getString(MESSAGE_TEXT_PARAMETER) ?: "Error adding stripe card!")
                }
            }
            else -> super.onActivityResult(requestCode, resultCode, data)
        }
    }

    private fun bindToModel() {
        presenter.cardsListVisibility.observe(this, Observer {
            activity?.runOnUiThread {
                if (it) {
                    cardslist.visibility = View.VISIBLE
                } else {
                    cardslist.visibility = View.INVISIBLE
                }
            }
        })

        presenter.emptyLabelVisibility.observe(this, Observer {

        })

        presenter.progressBarVisibility.observe(this, Observer {
            activity?.runOnUiThread {
                if (it) {
                    progressBar.visibility = View.VISIBLE
                } else {
                    progressBar.visibility = View.INVISIBLE
                }
            }
        })

        presenter.addStripeEnabled.observe(this, Observer {
            activity?.runOnUiThread {
                addStripe.isEnabled = it
            }
        })

        presenter.errorMessage.observe(this , Observer {
            if (it != DEFAULT_STRING_VALUE) {
                showErrorMessage(it)
            }
        })

        presenter.cardsList.observe(this, Observer {
            activity?.runOnUiThread {
                cardslist.adapter = CardsListAdapter(it, this)
            }
        })
    }

    private fun unboundFromModel() {
        presenter.cardsListVisibility.removeObservers(this)
        presenter.emptyLabelVisibility.removeObservers(this)
        presenter.progressBarVisibility.removeObservers(this)
        presenter.addStripeEnabled.removeObservers(this)
        presenter.errorMessage.removeObservers(this)
        presenter.cardsList.removeObservers(this)
    }

    private fun showErrorMessage(errorMessage:String) {
        activity?.runOnUiThread {
            Toast.makeText(context, errorMessage, Toast.LENGTH_LONG).show()
        }
    }
}