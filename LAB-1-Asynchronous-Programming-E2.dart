/*
Exercise 2: Use the Future.then method to handle the result of a Future.
*/

Future<String> fetchData() async {
  // Simulate an asynchronous operation
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched successfully!";
}

void main() {
  // Call the asynchronous function
  fetchData().then((data) {
    print(data); // Handle the fetched data here
  });

  print("This message appears before data is fetched.");
}
