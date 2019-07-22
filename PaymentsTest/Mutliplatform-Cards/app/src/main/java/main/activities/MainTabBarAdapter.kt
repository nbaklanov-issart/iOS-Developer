package main.activities

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.FragmentStatePagerAdapter
import main.fragments.brainTree.BrainTreeFragment
import main.fragments.stripe.CardsFragment

class MainTabBarAdapter(fm:FragmentManager, private val tabsCount:Int) : FragmentStatePagerAdapter(fm) {
    override fun getItem(position: Int): Fragment {
        return when(position) {
            0 -> {
                CardsFragment()
            }
            1 -> {
                BrainTreeFragment()
            }
            else -> {
                CardsFragment()
            }
        }
    }

    override fun getCount(): Int {
        return tabsCount
    }
}