class BankAccount(
    private var accountNumber: String,
    private var balance: Double
) {
    fun deposit(amount: Double) {
        balance += amount
    }

    fun withdraw(amount: Double) {
        if (balance >= amount) {
            balance -= amount
        } else {
            println("Insufficient funds. Unable to withdraw.")
        }
    }

    fun printBalance() {
        println("Account Number: $accountNumber")
        println("Current Balance: \$$balance")
    }
}
