import 'dart:ffi';

abstract class Vehicle {
  String name;
  int year;
  // constructor
  Vehicle(this.name, this.year);

  String toString() => 'name: $name; year: $year';
} 