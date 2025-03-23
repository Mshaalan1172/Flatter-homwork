//Create a list of 5 words.
//- Iterate through the list using a for-each loop.
//- Convert each word to uppercase.
//- Print each word in uppercas

void main() {
  List<String> words = ['apple', 'banana', 'orange', 'date', 'mango'];
  for (String word in words) {
    String uppercaseWord = word.toUpperCase();
    print(uppercaseWord);
  }
}
