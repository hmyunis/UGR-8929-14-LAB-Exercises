/*
Exercise 2: Write a function that takes a Map and prints all its keys and values.
*/

void printMap(Map<dynamic, dynamic> map) {
  if (map.isEmpty) {
    print("Map is empty.");
    return;
  }

  map.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}

void main(){
    // Test
    Map<String, double> myMap = {
        "Math": 91.5,
        "Physics": 77,
        "Biology": 99.2
    };
    printMap(myMap);
}
