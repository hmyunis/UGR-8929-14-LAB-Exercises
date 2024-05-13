fun findMinMaxCharacters(input: String) {
    if (input.isEmpty()) {
        println("Input string is empty.")
        return
    }

    var minChar = input[0]
    var maxChar = input[0]

    // Iterate through each character
    for (char in input) {
        if (char < minChar) {
            minChar = char
        }
        if (char > maxChar) {
            maxChar = char
        }
    }

    println("Minimum character in the input string: $minChar")
    println("Maximum character in the input string: $maxChar")
}

fun main() {
    val inputString = "Hello, The person reading this!"
    findMinMaxCharacters(inputString)
}