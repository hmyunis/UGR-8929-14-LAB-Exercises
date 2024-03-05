/*
Exercise 3: Use a finally block to ensure that some code runs no matter what.
*/

String processData(String data) {
  if (data.isEmpty) {
    throw Exception("Data cannot be empty!"); // Throw an exception
  }
  return "Data processed successfully: $data";
}

void main() {
  String validData = "This is some data.";
  String emptyData = "";

  try {
    // Process valid data (no exception)
    String result = processData(validData);
    print(result);

    // Process empty data (exception will be thrown)
    result = processData(emptyData);
    print(result); // This line won't be reached due to the exception
  } catch (error) {
    // Handle the exception
    print("Error: $error");
  } finally {
    print("Data processing finished.");
  }
}
