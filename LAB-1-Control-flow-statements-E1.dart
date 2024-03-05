/*
Exercise 1: Write a switch case in Dart which takes an integer from 1 to 7 and prints the corresponding day of the week.
*/

void main() {
  int dayNumber = 2;

  switch (dayNumber) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number. Please choose in the range 1-7");
  }
}
