/*
Exercise 3: Write a function that removes duplicates from a list.
*/

List<dynamic> removeDuplicates(List<dynamic> list) {
  return list.toSet().toList(); // Convert to Set and back to List
}

void main(){
    List myList = [1, "Hamdi", 3, 3, 1, 5, "Hamdi"];
    print(removeDuplicates(myList));
}