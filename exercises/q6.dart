// Count Words in a Sentence
//Write a function that counts the number of words in a given sentence.
//Words are separated by spaces, and the function should ignore extra spaces

import 'dart:io';

void main() {
  String sentence;
  print('Enter a sentence:');
  sentence = stdin.readLineSync()!;
  int wordCount = countWords(sentence);
  print('Number of words: $wordCount');
}

int countWords(String sentence) {
  List<String> words = sentence.split(' ');
  words.removeWhere((word) => word.isEmpty);
  return words.length;
}
