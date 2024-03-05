/*
Exercise 1: Given a list of integers, write a function that returns the highest number in the list.
*/

int getMaximum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("List cannot be empty");
  }

  int max = numbers[0];
  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}

void main(){
    // Test
    List<int> myNumbers = [131, 22, 37, 43, 51];
    print(getMaximum(myNumbers)); // 131 is printed
}