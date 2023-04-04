import 'package:dart_tutorial/models/vehicle.dart';

class Car extends Vehicle{
  double engineSize = 0.0;
  double horsePower = 0.0;

  Car(String name, int year, this.engineSize, this.horsePower)
  :super(name, year);

  void describe() {
    print("This cars runs with engineSize: $engineSize and horsePower $horsePower");
  }

  int get age => DateTime.now().year - year;

  @override
  String toString() => '${super.toString()} , engineSize: $engineSize, horsePower: $horsePower';
  
}
