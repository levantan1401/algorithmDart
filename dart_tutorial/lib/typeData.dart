import 'package:dart_tutorial/function.dart';
import 'package:dart_tutorial/models/car.dart';

void typeData() {
    var firstName = 'Le'; // this is a first name
  String lastName = "Van Tan";
  print('firstName: $firstName, lastName: $lastName');
  var fullName = firstName + ' ' + lastName;
  print(fullName);

  print(r'sử dụng tiền tố r để đưa về chuổi \u00a9');
  print("kí tự đặc biệt: \u00a9");

  String poem = ''' 
    Co cong mai sat,
    Co ngay nen kim
  ''';
  if (poem.isEmpty) {
    print('this is is empty');
  } else {
    print('String NOT empty');
  }

  bool isValidInput = firstName.isNotEmpty && lastName.isEmpty;
  print(isValidInput);

  // MATH
  print('2 and 3 is: ${add(2, 3)}');
  print("5 multiply 6 is: ${multiply(x: 5, y: 6)}");
  sayHello('Tan');

  String urlHome = getUrl('serverName', port: 3007);
  print(urlHome);
  print(getDateTimeString(month: 2, year: 2023));

  List<String> carBrands = ["Vios", "Toyota", "HyunDai", "Vinfast", "Honda"];

  print('Length of list: ${carBrands.length}');
  print('Thanh Phan: ${carBrands}');

  for (var i = 0; i < carBrands.length; i++) {
    String item = carBrands[i];
    print(item);
  }

  print("Cach duyet list bang forEach");
  carBrands.forEach((item) {
    print(item);
  });

  print("Cach duyet list bang asMap");
  carBrands.asMap().forEach((key, value) {
    print("key: $key, value: $value");
  });

  print("Tron cac phan tu trong list bang ham Shuffled");
  print(carBrands);
  
  print("Them item bang ham add"); // item được thêm đứng cuối list
  carBrands.add("MEC");
  print(carBrands);

  print("Thêm item vào vị trí chỉ định ");  
  carBrands.insert(2, "CX5");
  print(carBrands);

  print("Sao chép dữ liệu vào một hàm khác");
  List<String> cloneCar = [...carBrands];
  print('Hàm thứ nhất: ${carBrands}');
  print(cloneCar);

  cloneCar.sort((a,b) => b.compareTo(a));
  {
    print("SORT: ${cloneCar}");
  };

  // Vehicle vehicle = Vehicle("Xe Honda CX5", 2022);
  // print(vehicle);

  Car car1 = Car("Vinfast SA 2.0", 2018, 119, 220);

  print(car1);
  car1.describe();
  print(car1.age);



}