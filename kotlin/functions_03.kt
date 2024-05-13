fun transformToUppercase(strings: List<String>): List<String> {
    return strings.map { it.uppercase() }
}

fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}

fun main() {
    val strings = listOf("hello", "world", "kotlin")
    val uppercaseStrings = transformToUppercase(strings)
    println("Uppercase strings: $uppercaseStrings")

    val numbers = listOf(10, 20, 30, 40, 50)
    val filteredNumbers = filterNumbersGreaterThan(numbers, 25)
    println("Numbers greater than 25: $filteredNumbers")

    val numbersToSum = listOf(1, 2, 3, 4, 5)
    val sum = calculateSum(numbersToSum)
    println("Sum of numbers: $sum")
}