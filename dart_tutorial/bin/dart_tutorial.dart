import 'dart:io';

import 'package:dart_tutorial/dart_tutorial.dart' as dart_tutorial;
import 'package:dart_tutorial/function.dart';
import 'package:dart_tutorial/models/car.dart';
import 'package:dart_tutorial/models/vehicle.dart';
import 'package:dart_tutorial/typeData.dart';
import 'package:test/test.dart';
import 'package:dart_tutorial/ucademe.dart';
import 'package:dart_tutorial/hocSinh.dart';

void main() {
  // typeData(); // learn basic type data
  // ucademe();  // learn dart at ucademe
  // BÀI TOÁN ĐƯA RA: ĐIỂM HỌC SINH 
  // print("Nhap so luong sinh vien");
  // int n = int.parse(stdin.readLineSync()!);
  // hocSinh hocsinh = new hocSinh[n];

  // hocsinh.birthDay = ("01-01-2023");
  // hocsinh.printInfo();
  // hocsinh.avgDiem();

  // baitap1();
  // baitap2();
  // baitap5();
  // baitap6();
  baitap7();

}

void baitap7() {
  // Viết chương trình in ra cách đọc của một số nguyên n cho trước.
  print("Chương trình đọc số tự nhiên");
  int x = 123;
  int a;
  while(true){
     a = (x/10) as int;
     
  }
}

void baitap6() {
  // viết chương trình kiểm tra hai số thực a,b có cùng dấu không?
  print("Chương trình ktra 2 số cùng dấu không? ");
  double d = 3.3, c = -2.3;
  if(d * c > 0){
    print("2 Số cùng dấu");
  }else if(d * c < 0) print("Hai số trái dấu");

}
void baitap1() {
  // BAITAP1 
    print("NHAP 1 con so nguyen vao day: ");
    int n = int.parse(stdin.readLineSync()!);

    if(n % 2 == 0) 
      print('SO CHAN');
    else if(n % 2 == 1) 
      print('SO LE');
}
void baitap2(){
 
  // BAITAP2:
  print("CHUONG TRINH IN SO NGUYEN DUONG LE");
  for(int i = 0; i < 100; i++){
    if(i % 2 == 1){
      if(i == 5 || i == 7 || i == 93) continue;
      print("$i" "");
    }
  }
}

void baitap5(){
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);
  // double max = a;
  // if (max < b) max = b;
  // if (max < c) max = c;
  // print(max);

  // cach 2: 
  print((((((a > b) ? a : b) > c) ? (a > b) ? a : b : c)));

  /**
   * BIỂU THỨC ĐIỀU KIỆN:
   * (((a > b) ? a : b) > c ? ((a > b) ? a : b) : c)
   *  a or b is max  a/b > c --> a/b: c 
   */

  // cách 3: 
  double max = (a+b+(a-b).abs())/2;
  print((max + c + (max - c).abs()) / 2);

          
}
