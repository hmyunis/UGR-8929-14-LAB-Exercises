/*
Exercise 2: Write a function that takes a list of numbers and returns the average
*/

double getAverage(List<num> numbers) {
  if (numbers.isEmpty) {
    return 0.0;
  }

  double sum = 0.0;
  for (num number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}

void main(){
    // Test
    List<num> myNumbers = [1,2,3,4,5];
    print(getAverage(myNumbers));
}
