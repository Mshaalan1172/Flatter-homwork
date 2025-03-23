//Temperature Converter
//Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
//Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
//Convert accordingly and return the result.

import 'dart:io';

void main() {
  double temperature;
  String unit = 'C'; // 'C' for Celsius, 'F' for Fahrenheit
  print('Enter the temperature:');
  temperature = double.parse(stdin.readLineSync()!);
  print('enter the unit. Use "C" for Celsius or "F" for Fahrenheit.');
  unit = stdin.readLineSync()!;
  while (unit != 'C' && unit != 'F') {
    print('Invalid unit. Use "C" for Celsius or "F" for Fahrenheit.');
    unit = stdin.readLineSync()!;
  }
  double result = convertTemperature(temperature, unit);
  print('Converted temperature: $result');
}

double convertTemperature(double temperature, String unit) {
  if (unit == 'C') {
    return (temperature * 9 / 5) + 32;
  } else if (unit == 'F') {
    return (temperature - 32) * 5 / 9;
  } else {
    throw Exception('error occured');
  }
}
