fun analyzeString(input: String): Triple<Int, Int, Int> {
    var wordCount = 0
    var uppercaseCount = 0
    var vowelCount = 0

    // Split into words using whitespace as delimiter
    val words = input.split("\\s+".toRegex())

    for (word in words) {
        if (word.isNotEmpty()) {
            wordCount++

            for (char in word) {
                if (char.isUpperCase()) {
                    uppercaseCount++
                }
                if (char.lowercaseChar() in listOf('a', 'e', 'i', 'o', 'u')) {
                    vowelCount++
                }
            }
        }
    }

    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
    val inputString = "Hi! We are learning Kotlin today at NB-114."
    val (wordCount, uppercaseCount, vowelCount) = analyzeString(inputString)

    println("Input String: $inputString")
    println("Number of Words: $wordCount")
    println("Number of Uppercase Letters: $uppercaseCount")   
    println("Number of Vowels: $vowelCount")
}