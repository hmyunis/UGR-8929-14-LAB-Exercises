/*
Exercise 1: Use async and await to wait for a Future to complete.
*/

Future<String> fetchData() async {
  // Simulate an asynchronous operation
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched successfully!";
}

void main() async {
  // Call the asynchronous function
  String data = await fetchData();

  // Data is available after the Future completes
  print(data);
}

