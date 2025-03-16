// Create a Dart program that takes two numbers as input and performs addition, subtraction,
// multiplication, and division using variables, arithmetic operators, and functions. Also, include
// optional parameters for different operations (e.g., addition of multiple numbers)

import 'dart:io';

void main() {
  print('enter the first number');
  double? number1 = double.parse(stdin.readLineSync()!);
  print('enter the second number');
  double? number2 = double.parse(stdin.readLineSync()!);

  double calculate({
    String? addition,
    String? subtraction,
    String? multiplication,
    String? division,
  }) {
    if (addition != null) {
      double addition = number1 + number2;
      return (addition);
    } else if (subtraction != null) {
      double subtraction = number1 - number2;
      return (subtraction);
    } else if (multiplication != null) {
      double multiplication = number1 * number2;
      return (multiplication);
    } else {
      double division = number1 / number2;
      return (division);
    }
  }

  print(
    'what do you want ? [addition (a),subtraction(s) ,multiplication(m) or division(d)]',
  );
  print('enter your choice (a,s,m or d)');
  String answer = stdin.readLineSync()!;
  switch (answer) {
    case 'a':
      print(calculate(addition: 'a'));
      break;
    case 's':
      print(calculate(subtraction: 's'));
      break;
    case 'm':
      print(calculate(multiplication: 'm'));
      break;
    case 'd':
      print(calculate(division: 'd'));
  }
}
