package main.activities

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.Toolbar
import androidx.navigation.Navigation.findNavController
import kotlinx.android.synthetic.main.activity_tab_bar_layout.*
import main.R
import com.google.android.material.tabs.TabLayout
import androidx.viewpager.widget.PagerAdapter
import androidx.viewpager.widget.ViewPager



class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_tab_bar_layout)
        setSupportActionBar(toolbar as Toolbar)

        val tabLayout = tab_layout as TabLayout
        tabLayout.addTab(tabLayout.newTab().setText("Stripe"))
        tabLayout.addTab(tabLayout.newTab().setText("PayPal"))
        tabLayout.tabGravity = TabLayout.GRAVITY_FILL

        val viewPager = pager as ViewPager
        val adapter = MainTabBarAdapter(supportFragmentManager, tabLayout.tabCount)
        viewPager.adapter = adapter
        viewPager.addOnPageChangeListener(TabLayout.TabLayoutOnPageChangeListener(tabLayout))

        tabLayout.addOnTabSelectedListener(object : TabLayout.OnTabSelectedListener {
            override fun onTabSelected(tab: TabLayout.Tab) {
                viewPager.currentItem = tab.position
            }
            override fun onTabUnselected(tab: TabLayout.Tab) {}
            override fun onTabReselected(tab: TabLayout.Tab) {}
        })
    }
}