/*
Exercise 1: Create a class Car with properties like brand, model, and year. Instantiate this class and print the properties.
*/

class Car {
  String brand;
  String model;
  int year;

  // Constructor
  Car(this.brand, this.model, this.year);
}

void main() {
    // Create a Car object
    Car myCar = Car("Toyota", "Corolla", 1998);

    print("Brand: ${myCar.brand}");
    print("Model: ${myCar.model}");
    print("Year: ${myCar.year}");
}
