import kotlin.random.Random

fun generateRandomPassword(length: Int): String {
    val passwordChars = ('A'..'Z') + ('a'..'z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_')
    var password = ""
    
    repeat(length) {
        val randomIndex = Random.nextInt(0, passwordChars.size)
        password += passwordChars[randomIndex]
    }
    
    return password
}

fun main() {
    val passwordLength = 8
    val generatedPassword = generateRandomPassword(passwordLength)
    
    println("Generated Password: $generatedPassword")
}