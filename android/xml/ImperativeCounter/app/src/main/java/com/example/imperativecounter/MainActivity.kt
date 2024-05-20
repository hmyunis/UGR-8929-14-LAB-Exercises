package com.example.imperativecounter

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView

class MainActivity : AppCompatActivity() {

    private lateinit var incrementButton: Button
    private lateinit var decrementButton: Button
    private lateinit var resetButton: Button
    private lateinit var countText: TextView

    private var count = 0 // Stores the current count value

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Find views by ID
        incrementButton = findViewById(R.id.increment_button)
        decrementButton = findViewById(R.id.decrement_button)
        resetButton = findViewById(R.id.reset_button)
        countText = findViewById(R.id.count_text)

        // Set initial text
        countText.text = count.toString()

        // Set click listeners
        incrementButton.setOnClickListener {
            count++
            countText.text = count.toString()
        }

        decrementButton.setOnClickListener {

            count--

            countText.text = count.toString()
        }

        resetButton.setOnClickListener {
            count = 0
            countText.text = count.toString()
        }
    }
}
