// Write a Dart program that checks if a number is within a specified range using logical operators
// and prints the result

import 'dart:io';

void main() {
  int min = 10;
  int max = 50;
  print('enter any number');
  double number = double.parse(stdin.readLineSync()!);

  // Check if the number is within the range using logical operators
  bool isWithinRange = number >= min && number <= max;

  if (isWithinRange) {
    print(' $number within the range [$min, $max]');
  } else {
    print(' $number not in the range [$min, $max]');
  }
}
