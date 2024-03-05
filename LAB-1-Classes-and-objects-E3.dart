/*
Exercise 3: Create a class ElectricCar that inherits from Car and has an additional property batteryLife.
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

class ElectricCar extends Car {
  double batteryLife;

  // Constructor
  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);
}


void main() {
  // Create an ElectricCar object
  ElectricCar electricCar = ElectricCar("Tesla", "Model S", 2022, 500.0);

  // Access and print batteryLife
  print("Battery Life: ${electricCar.batteryLife} km");
}