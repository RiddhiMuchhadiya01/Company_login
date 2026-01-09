import 'dart:io';

void main() {
  // Ask user for input
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);

  print("Odd numbers between 1 and $n are:");

  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}
