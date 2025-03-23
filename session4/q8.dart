//- Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
//- Returns "Weekday" otherwise.- If the input is invalid, return "Invalid day".
// Call the function inside `main()` and print the result

import 'dart:io';

void main() {
  String day =
      stdin.readLineSync()!; // Read user input and convert it to a String

  String result = isWeekend(day);
  print(result);
}

String isWeekend(String day) {
  switch (day) {
    case 'Saturday':
    case 'Sunday':
      return 'Weekend';
    default:
      return 'Weekday';
  }
}
