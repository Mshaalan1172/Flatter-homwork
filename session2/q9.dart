// Create an integer variable month with a value between 1 and 12.
//- Use a switch statement to print the season based on the month

void main() {
  int month = 2;
  switch (month) {
    case (3 || 4 || 5):
      print('Current Season is Spring');
      break;
    case (6 || 7 || 8):
      print('Current Season is Summer');
      break;
    case (9 || 10 || 11):
      print('Current Season is Autumn');
      break;
    case (12 || 1 || 2):
      print('Current Season is Winter');
      break;
  }
}
