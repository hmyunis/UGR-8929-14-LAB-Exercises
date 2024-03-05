/*
Exercise 2: Add a method to the Car class that prints “Vroom Vroom”.
*/

class Car {
  String brand;
  String model;
  int year;

  // Constructor
  Car(this.brand, this.model, this.year);

  // Method to make sound
  void makeNoise(){
    print("Vroom Vroom");
  }
}

void main() {
    // Create a Car object
    Car myCar = Car("Toyota", "Corolla", 1998);

    // Make the car sound
    myCar.makeNoise();
}