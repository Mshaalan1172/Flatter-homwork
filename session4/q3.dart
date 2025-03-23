// Create a list of numbers. Iterate over the list and:
//- If a number is even, print "Even: <number>".
//- If a number is odd, print "Odd: <number>"

void main() {
  List<int> numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int number in numbersList) {
    if (number % 2 == 0) {
      print('Even: $number');
    } else {
      print('Odd: $number');
    }
  }
}
