/*
Exercise 2: Use a try-catch block to catch a specific type of exception.
*/

int parseNumber(String input) {
  try {
    return int.parse(input); // Attempt to parse the string as an integer
  } on FormatException {
    // Handle FormatException if the input is not a valid integer
    print("Error: Input '$input' is not a valid number.");
    return 0;
  }
}

void main() {
  String validNumber = "123";
  String invalidNumber = "abc";

  try {
    int result = parseNumber(validNumber);
    print(result);

    result = parseNumber(invalidNumber); // This will throw a FormatException
    print(result); // This line won't be reached
  } catch (error) {
    // Handle other unexpected exceptions
    print("Unexpected error: $error");
  }
}
