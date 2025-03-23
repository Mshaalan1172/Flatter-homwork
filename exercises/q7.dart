//Reverse a String
// Write a function that takes a string as input and returns the string reversed
// Example: reverseString('hello') -> 'olleh

import 'dart:io';

void main() {
  String sentence;
  print('Enter a sentence:');
  sentence = stdin.readLineSync()!;
  String reversedSentence = reverseString(sentence);
  print('Reversed sentence: $reversedSentence');
}

String reverseString(String sentence) {
  return sentence.split('').reversed.join('');
}
