fun performOperation(num1: Double, num2: Double, operator: String): Double {
    return when (operator) {
        "addition" -> num1 + num2
        "subtraction" -> num1 - num2
        "multiplication" -> num1 * num2
        "division" -> num1 / num2
        else -> throw IllegalArgumentException("Invalid operator provided. Please choose from: addition, subtraction, multiplication, division.")
    }
}

fun main() {
    println("Enter the first number:")
    val number1 = readLine()!!.toDouble()

    println("Enter the second number:")
    val number2 = readLine()!!.toDouble()

    println("Enter the operation (addition, subtraction, multiplication, division):")
    val operation = readLine()!!

    val result = performOperation(number1, number2, operation)
    println("Result of $number1 $operation $number2 = $result")
}