fun convertKilometersToMiles(distance: Double): Double {
    // 1 kilometer is approximately equal to 0.621371 miles.
    return distance * 0.621371
}

fun convertMilesToKilometers(distance: Double): Double {
    // 1 mile is approximately equal to 1.60934 kilometers.
    return distance * 1.60934
}

fun convertDistance(distance: Double, unit: String) {
    when (unit.lowercase()) {
        "kilometers" -> {
            val miles = convertKilometersToMiles(distance)
            println("$distance kilometers is approximately $miles miles.")
        }
        "miles" -> {
            val kilometers = convertMilesToKilometers(distance)
            println("$distance miles is approximately $kilometers kilometers.")
        }
        else -> {
            println("Invalid unit. Please provide either 'kilometers' or 'miles'.")
        }
    }
}

fun main() {
    // Convert 100 kilometers to miles.
    convertDistance(100.0, "kilometers")

    // Convert 50 miles to kilometers.
    convertDistance(50.0, "miles")

    // Example with invalid unit.
    convertDistance(75.0, "invalid")
}