package main.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.Observer
import kotlinx.android.synthetic.main.fragment_cards_list.*
import main.R
import main.presenters.CardsListPresenter
import main.utils.DEFAULT_STRING_VALUE

class CardsFragment : Fragment() {
    private val presenter = CardsListPresenter()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_cards_list, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        presenter.attachView()

        bindToModel()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        presenter.detachView()
        unboundFromModel()
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
            activity?.runOnUiThread {
                if (it != DEFAULT_STRING_VALUE) {
                    Toast.makeText(context, it, Toast.LENGTH_LONG).show()
                }
            }
        })

        presenter.cardsList.observe(this, Observer {
            
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
}