//Check Leap Year
// Write a function that determines if a given year is a leap year.
// A year is a leap year if it is divisible by 4 but not divisible by 100,
// except if it is also divisible by 400

import 'dart:io';

void main() {
  int year;
  print("Enter a year: ");
  year = int.parse(stdin.readLineSync()!);
  if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {
    print("$year is a leap year");
  } else {
    print("$year is not a leap year");
  }
}
