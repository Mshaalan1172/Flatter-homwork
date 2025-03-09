//What is the difference between var and dynamic in Dart? Provide an example of each.

void main() {
  var length = 10;
  // var is used to define the variable data type from its value
  // i.e, variable (length) is integer and cann't be changed to another type
  dynamic area = 22;
  print(area);
  area = 101.7;
  print(area);
  area = "surface area";
  print(area);
  // dynamic is used as dynamically changed data type variable,
  // the variable data type can be changed without any problems
}
