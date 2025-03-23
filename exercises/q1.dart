// Basic Arithmetic Calculator
// Write a function that takes two numbers and an operator (+, -, *, /) as input
//and returns the result.  Handle cases where division by zero might occur
import 'dart:io';

void main() {
  double number1;
  double number2;
  String operator;
  double result;
  print('enter the first number');
  number1 = double.parse(stdin.readLineSync()!);
  print('enter the second number');
  number2 = double.parse(stdin.readLineSync()!);

  print('enter the operator (+,-,*,/)');
  operator = stdin.readLineSync()!;
  while (operator != '-' &&
      operator != '+' &&
      operator != '*' &&
      operator != '/') {
    print('Not valid operator, enter the operator (+,-,*,/)');
    operator = stdin.readLineSync()!;
  }

  double calculate(double num1, double num2, String operator) {
    switch (operator) {
      case '+':
        return num1 + num2;
      case '-':
        return num1 - num2;
      case '*':
        return num1 * num2;
      case '/':
        if (num2 == 0) {
          print('Cannot divide by zero');
        }
        return num1 / num2;
      default:
        throw Exception('Invalid operator');
    }
  }

  result = calculate(number1, number2, operator);
  print('the result is $result');
}
