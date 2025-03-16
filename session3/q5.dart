//Create a class with a few properties and methods.
//Instantiate the class and use the dot operator to access and print its properties and methods
void main() {
  Human mohamed = Human();
  mohamed.height = 190;
  mohamed.weight = 121;
  mohamed.readweight();

  Human ali = Human();
  ali.height = 190;
  ali.weight = 76;

  ali.readweight();
}

class Human {
  double? height;
  double? weight;

  void readweight() {
    print('human wigth=$weight');
  }
}
