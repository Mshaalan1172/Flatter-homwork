//- Create a set named uniqueNumbers with the values {10, 20, 30, 40}.
//- Print the length of uniqueNumbers.
//- Check if the number 20 is present in the set and print the result

void main() {
  Set<int> uniqueNumbers = {10, 20, 30, 40};
  print('length of uniqueNumbers $uniqueNumbers.length');
  if (uniqueNumbers.contains(20)) {
    print('number 20 is present in the Set');
  } else {
    print('number 20 is not present in the Set');
  }
}
