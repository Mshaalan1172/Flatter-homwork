//Use Map and List to create a program that stores weather data for different cities (temperature, humidity, etc.).
//Write a function that can retrieve and print weather details using a city name.
void main() {
  Map<String, List<String>> weatherData = {
    'cairo': ['Temperature: 25°C', 'Humidity: 60%', 'Wind Speed: 10 km/h'],
    'alexandira': ['Temperature: 28°C', 'Humidity: 50%', 'Wind Speed: 5 km/h'],
    'benha': ['Temperature: 20°C', 'Humidity: 70%', 'Wind Speed: 15 km/h'],
    'aswan': ['Temperature: 30°C', 'Humidity: 80%', 'Wind Speed: 8 km/h'],
  };

  void printWeatherDetails(String city) {
    if (weatherData.containsKey(city)) {
      print('Weather Details for $city:');
      weatherData[city]!.forEach((detail) => print(detail));
    } else {
      print('No weather data available for $city.');
    }
  }

  printWeatherDetails('aswan');
  printWeatherDetails('cairo');
  printWeatherDetails('tanta');
  printWeatherDetails('benha');
}
