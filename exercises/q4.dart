//Find Prime Numbers in a Range
//Write a function that takes two numbers (start, end) and returns a list of all prime numbers between them.
// Ensure that the function correctly identifies prime numbers and handles edge cases where start is  greater than end.

import 'dart:io';

void main() {
  int start;
  int end;
  print('Enter the start number:');
  start = int.parse(stdin.readLineSync()!);
  print('Enter the end number:');
  end = int.parse(stdin.readLineSync()!);

  List<int> primeNumbers = findPrimes(start, end);
  print('Prime numbers between $start and $end: $primeNumbers');
}

List<int> findPrimes(int start, int end) {
  List<int> primes = [];
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }
  return primes;
}

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
