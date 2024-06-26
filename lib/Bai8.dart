//  Viết chương trình sinh ra một số tự nhiên n ngẫu nhiên từ 1 đến 100.
//  Đề nghị người dùng đoán một số và nhập vào.
//  In ra màn hình thông báo xem số người dùng đoán đúng,
//  lớn hơn hay nhỏ hơn số n. Nếu chưa đúng thì cho phép người dùng đoán lại hai lần nữa.

import 'dart:io';
import 'dart:math';

void main () {
  Random random = Random();
  int n = random.nextInt(100) + 1;
  int soLanDoan = 0;
  while (soLanDoan < 3) {
    stdout.write("Vui lòng đoán: ");
    int soDuDoan = int.parse(stdin.readLineSync()!);
    soLanDoan++;
    if(soDuDoan == n) {
      print("Đoaán đúng");
    } else if (soDuDoan > n) {
      print("Lơn hơn số cần đoán");
    } else {
      print("Nhỏ hơn số cần đoán");
    }
  }
  if(soLanDoan == 3) {
    print("Thua");
  }
}