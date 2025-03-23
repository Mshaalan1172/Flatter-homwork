// Write a function `uniqueNames(List<String> names)` that:
//- Accepts a list of names.
//- Returns a Set containing only unique names.
// Call the function inside `main()` and print the result.

void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie', 'Alice', 'Bob', 'Charlie'];
  Set<String> uniqueNames = unique(names);
  print('Unique names: $uniqueNames'); // Output: {'Alice', 'Bob', 'Charlie'}
}

Set<String> unique(List<String> names) {
  Set<String> uniqueNames = Set<String>.from(names);
  return uniqueNames;
}
