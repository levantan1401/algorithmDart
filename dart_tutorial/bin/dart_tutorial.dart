import 'dart:io';
import 'dart:math';

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
  // baitap7();
  // baitap8();
  // baitap9();
  baitap10();
}

void baitap10() {
  print("Chuong trinh nhap thang va cho biet thang do co bao nhieu ngay");
  // print("Nhap thang can tim:");
  // DateTime datetime = DateTime.parse(stdin.readLineSync()!);
  DateTime datetime = DateTime.now();
  switch (datetime.month) {
    case 1 | 3 | 5 | 7 | 8 | 10 | 12:
      print("Thang co 31 ngay");
      break;
    case 2:
      if (datetime.year % 100 != 0 && datetime.year % 4 == 0) {
        print("Thang co 29 ngay");
        break;
      } else {
        print("Thang co 28 ngay");
        break;
      }
    case 4:
    case 6:
    case 9:
    case 11:
      print("Thang co 30 ngay");
      print("$datetime");
      break;
  }
}

void baitap9() {
  print("Chuong trinh tin so chia het cho 7 nhung khong la boi so cua 5");
  List output = [];

  for (int i = 10; i <= 200; i++) {
    if (i % 7 == 0 && i % 5 != 0) {
      output.add(i);
    }
  }
  print(output.toString());
}

void baitap8() {
  print("Chương trình đoán số");
  final random = Random();
  int ranNumer = random.nextInt(100);
  int so_lan_doan = 0;

  while (so_lan_doan <= 5) {
    int so_du_doan = int.parse(stdin.readLineSync()!);
    so_lan_doan++;
    if (so_du_doan == ranNumer) {
      print("CHINH XAC !!!!!!!!");
      break;
    } else if (so_du_doan > ranNumer) {
      print("Số cần tim phải lớn hơn $so_du_doan");
    } else {
      print("Số cần tìm bé hơn $so_du_doan");
    }
  }
  if (so_lan_doan > 5) {
    print("BAN THUA ROI ");
    print("Số: $ranNumer");
  }
}

void baitap7() {
  // Viết chương trình in ra cách đọc của một số nguyên n cho trước.
  print("Chương trình đọc số tự nhiên");
  int n = int.parse(stdin.readLineSync()!);
  // String hang_dv = "";
  // String hang_chuc = "";
  // String hang_tram = "";

  // int hangTram = n ~/ 100;
  // int hangChuc = (n - 100  * hangTram) ~/ 10;
  // int hangDV =  n % 10;

//   switch (hangTram) {
//     case 0: hang_tram = "Không"; break;
//     case 1: hang_tram = "Một"; break;
//     case 2: hang_tram = "Hai"; break;
//     case 3: hang_tram = "Ba"; break;
//     case 4: hang_tram = "Bốn"; break;
//     case 5: hang_tram = "Năm"; break;
//     case 6: hang_tram = "Sáu"; break;
//     case 7: hang_tram = "Bảy"; break;
//     case 8: hang_tram = "Tám"; break;
//     case 9: hang_tram = "Chín"; break;
//   }
//   switch (hangChuc) {
//     case 0: hang_chuc = "linh"; break;
//     case 1: hang_chuc = "Một"; break;
//     case 2: hang_chuc = "Hai"; break;
//     case 3: hang_chuc = "Ba"; break;
//     case 4: hang_chuc = "Bốn"; break;
//     case 5: hang_chuc = "Năm"; break;
//     case 6: hang_chuc = "Sáu"; break;
//     case 7: hang_chuc = "Bảy"; break;
//     case 8: hang_chuc = "Tám"; break;
//     case 9: hang_chuc = "Chín"; break;
//   }
//   switch (hangDV) {
//     case 0: hang_dv = ""; break;
//     case 1: hang_dv = "Một"; break;
//     case 2: hang_dv = "Hai"; break;
//     case 3: hang_dv = "Ba"; break;
//     case 4: hang_dv = "Bốn"; break;
//     case 5: hang_dv = "Năm"; break;
//     case 6: hang_dv = "Sáu"; break;
//     case 7: hang_dv = "Bảy"; break;
//     case 8: hang_dv = "Tám"; break;
//     case 9: hang_dv = "Chín"; break;
//   }

// if ( hangChuc > 1 )
// {
//   print("$hang_tram trăm $hang_chuc mươi $hang_dv");
// }else print("$hang_tram trăm $hang_chuc $hang_dv");

// CACH 2
  List<String> chuCai = [
    'Không',
    'Một',
    'Hai',
    'Ba',
    'Bốn',
    'Năm',
    'Sáu',
    'Bảy',
    'Tám',
    'Chín'
  ];

  if (n % 10 != 0) {
    print(
        '${chuCai[n ~/ 100]} trăm ${chuCai[(n - (n ~/ 100) * 100) ~/ 10]} mươi ${chuCai[n % 10]}.');
  } else {
    print(
        '${chuCai[n ~/ 100]} trăm ${chuCai[(n - (n ~/ 100) * 100) ~/ 10]} mươi.');
  }
}

void baitap6() {
  // viết chương trình kiểm tra hai số thực a,b có cùng dấu không?
  print("Chương trình ktra 2 số cùng dấu không? ");
  double d = 3.3, c = -2.3;
  if (d * c > 0) {
    print("2 Số cùng dấu");
  } else if (d * c < 0) print("Hai số trái dấu");
}

void baitap1() {
  // BAITAP1
  print("NHAP 1 con so nguyen vao day: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n % 2 == 0)
    print('SO CHAN');
  else if (n % 2 == 1) print('SO LE');
}

void baitap2() {
  // BAITAP2:
  print("CHUONG TRINH IN SO NGUYEN DUONG LE");
  for (int i = 0; i < 100; i++) {
    if (i % 2 == 1) {
      if (i == 5 || i == 7 || i == 93) continue;
      print("$i" "");
    }
  }
}

void baitap5() {
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);
  // double max = a;
  // if (max < b) max = b;
  // if (max < c) max = c;
  // print(max);

  // cach 2:
  print((((((a > b) ? a : b) > c)
      ? (a > b)
          ? a
          : b
      : c)));

  /**
   * BIỂU THỨC ĐIỀU KIỆN:
   * (((a > b) ? a : b) > c ? ((a > b) ? a : b) : c)
   *  a or b is max  a/b > c --> a/b: c 
   */

  // cách 3:
  double max = (a + b + (a - b).abs()) / 2;
  print((max + c + (max - c).abs()) / 2);
}
