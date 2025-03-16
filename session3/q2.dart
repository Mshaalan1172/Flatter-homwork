// Implement a program that uses a List to store grocery items. It should allow adding,
//removing, and  displaying items. Use functions with return types and optional/named parameters.
// Make sure to  handle possible null values

import 'dart:io';

void main() {
  List<String> items = ['oil', 'milk', 'suger'];
  void adding({String? ItemName}) {
    items.add(ItemName!);
    print('This item has been added successfully');
    print('current items $items');
  }

  void removing({String? ItemName}) {
    if (items.contains(ItemName)) {
      items.remove(ItemName!);
      print('This item has been removed successfully');
    } else {
      print('This item not found');
    }
    print('current items $items');
  }

  void checking({String? ItemName}) {
    if (items.contains(ItemName)) {
      print('exist');
    } else {
      print('not exist');
    }
    print('current items $items');
  }

  print(
    'what do you want ? [adding new item (a),remove existing item(r) ,display the current items (d) or check existing (c)]',
  );
  print('enter your choice (a,r,d or c)');
  String answer = stdin.readLineSync()!;
  switch (answer) {
    case 'a':
      print('Enter item name');
      adding(ItemName: stdin.readLineSync()!);
      break;
    case 'r':
      print('Enter item name');
      removing(ItemName: stdin.readLineSync()!);
      break;
    case 'd':
      print('current items $items');
      break;
    case 'c':
      print('Enter item name');
      String item = stdin.readLineSync()!;
      checking(ItemName: item);
      break;
  }
}
