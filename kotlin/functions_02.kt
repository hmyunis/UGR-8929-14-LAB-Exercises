fun findMax(numbers: List<Int>): Int {
    require(numbers.isNotEmpty()) { "List should not be empty" }
    return numbers.maxOrNull() ?: throw IllegalArgumentException("List is empty")
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double {
    require(numbers.isNotEmpty()) { "List should not be empty" }
    return numbers.average()
}

fun main() {
    val numbers1 = listOf(3, 7, 12, 5, 9, 8, 4)
    val maxNumber = findMax(numbers1)
    println("Maximum value in $numbers1 is: $maxNumber")  // output: 12

    val numbers2 = listOf(2, 5, 10, 15, 8, 6)
    val evenNumbers = filterEvenNumbers(numbers2)
    println("Even numbers in $numbers2 are: $evenNumbers")  // output: [2, 10, 8, 6]

    val numbers3 = listOf(2.5, 3.7, 8.9, 4.2, 6.1)
    val averageValue = calculateAverage(numbers3)
    println("Average value of $numbers3 is: $averageValue")  // output: 5.08
}