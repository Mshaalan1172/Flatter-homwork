// Find the Longest Word
//Write a function that takes a sentence as input and returns the longest word in the sentence.
//If multiple words have the same longest length, return the first one that appears

import 'dart:io';

void main() {
  String sentence;
  print('Enter a sentence:');
  sentence = stdin.readLineSync()!;
  String longestWord = findLongestWord(sentence);
  print('Longest word: $longestWord');
}

String findLongestWord(String sentence) {
  List<String> words = sentence.split(' ');
  String longestWord = words[0];
  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }
  return longestWord;
}
