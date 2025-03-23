//Sum of List Elements
//Write a function that takes a list of numbers and returns the sum of all elements.

import 'dart:io';

void main() {
  print('how many numbers do you want to add?');
  int number = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  for (int i = 0; i < number; i++) {
    print('Enter number ${i + 1}:');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  int sum = sumlist(numbers);
  print('Sum: $sum');
}

int sumlist(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}
