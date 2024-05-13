fun calculateFinalPrice(originalPrice: Double, discountPercentage: Double): Double {
    val threshold = 0.5
    var finalPrice: Double

    if (discountPercentage > threshold) {
        println("The discount percentage is too high.")
        finalPrice = originalPrice * (1 - threshold)
    } else {
        finalPrice = originalPrice * (1 - discountPercentage)
    }

    return finalPrice
}

fun main() {
    val originalPrice = 100.0
    val discountPercentage = 0.6  // 60% discount

    val finalPrice = calculateFinalPrice(originalPrice, discountPercentage)

    println("Original Price: $$originalPrice")
    println("Discount Percentage: ${discountPercentage * 100}%")
    println("Final Price after Discount: $$finalPrice")
}