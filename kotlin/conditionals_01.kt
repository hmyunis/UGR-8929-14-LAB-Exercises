fun assignLetterGrade(numericGrade: Int): String {
    return when (numericGrade) {
        in 90..100 -> "A"
        in 80..89 -> "B"
        in 70..79 -> "C"
        in 60..69 -> "D"
        else -> "F"
    }
}

fun main() {
    val grade1 = 85
    val grade2 = 45

    println("Numeric Grade: $grade1, Letter Grade: ${assignLetterGrade(grade1)}")  // output: B
    println("Numeric Grade: $grade2, Letter Grade: ${assignLetterGrade(grade2)}")  // output: F
}