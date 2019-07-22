package main.fragments.stripe

import android.view.View
import androidx.recyclerview.widget.RecyclerView
import kotlinx.android.synthetic.main.row_card_list.view.*

class CardsListViewHolder(view: View) : RecyclerView.ViewHolder(view) {
    val id = view.cardId
    val number = view.cardNumber
    val cvc = view.cardCvv
    val parentLayout = view.parent_layout
}