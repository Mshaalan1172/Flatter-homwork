//Create a class `Rectangle` with:
//- Private attributes `_width` and `_height`.
//- A constructor that initializes the values.
//- A getter `area` that calculates and returns the area.
//In `main()`, create a `Rectangle` object and print its area

void main() {
  Rectangle rectangle = Rectangle(10, 20);
  double area = rectangle.area;
  print('The area of the rectangle is: $area');
}

class Rectangle {
  double? _width;
  double? _height;

  Rectangle(double width, double height) {
    _width = width;
    _height = height;
  }

  double get area => _width! * _height!;
}
