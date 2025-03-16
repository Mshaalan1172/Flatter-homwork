//Create a program that asks the user to input a number and checks if it's positive, negative,
//or zero  using if-else statements

import 'dart:io';

void main() {
  print('enter any number');
  double number = double.parse(stdin.readLineSync()!);
  if (number < 0) {
    print('this is negative number');
  } else if (number > 0) {
    print('this is positive number');
  } else {
    print('this is number equal zero');
  }
}
