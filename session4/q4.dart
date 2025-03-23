//Create a Dart program that:
//- Declares a `Map<String, int>` where keys are fruit names and values are their prices.
//- Implements a function `getPrice(String fruitName)` that returns the price of a given fruit.
//- If the fruit is not found, return -1. Call the function inside `main()` and print the result

import 'dart:io';

void main() {
  String fruitName;

  print('enter fruit name:');
  fruitName =
      stdin.readLineSync()!; // Read user input and convert it to a String

  int price = getPrice(fruitName);
  print('Price of $fruitName: $price');
}

int getPrice(String fruitName) {
  Map<String, int> FruitsData = {
    'apple': 25,
    'banana': 22,
    'orange': 13,
    'grape': 24,
    'kiwi': 15,
  };
  if (FruitsData.containsKey(fruitName)) {
    return FruitsData[fruitName]!; // Use the ! operator to access the value directly
  } else {
    return -1;
  }
}
