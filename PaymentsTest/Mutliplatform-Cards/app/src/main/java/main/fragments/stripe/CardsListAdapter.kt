package main.fragments.stripe

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import main.R
import main.model.UserCard

class CardsListAdapter(private val cardsList:List<UserCard>,
                       private val listener: CardsRowListener
) : RecyclerView.Adapter<CardsListViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): CardsListViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.row_card_list, parent, false)
        return CardsListViewHolder(view)
    }

    override fun getItemCount(): Int {
        println(cardsList.size)
        return cardsList.size
    }

    override fun onBindViewHolder(holder: CardsListViewHolder, position: Int) {
        val currentCard = cardsList[position]
        holder.id.text = currentCard.id
        holder.number.text = currentCard.number
        holder.cvc.text = currentCard.cvv
        holder.parentLayout.setOnClickListener {
            listener.onRowSelected(currentCard)
        }
    }
}