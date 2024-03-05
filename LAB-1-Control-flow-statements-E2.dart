/*
Exercise 2: Write a program that uses a for loop to print the first 10 numbers in the Fibonacci sequence.
*/

void main() {
  int f1 = 0;
  int f2 = 1;
  int n = 100;

  for (int i = 1; i <= n; i++) {
    print(f1);
    int temp = f1;
    f1 = f2;
    f2 = temp + f1;
  }
}
