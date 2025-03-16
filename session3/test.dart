class Duty {
  int? id;
  String? description;
  String? due_date;
  bool? isCompleted;

  Duty({
    required this.id,
    required this.description,
    required this.due_date,
    required this.isCompleted,
  });
}

class Weather {
  String? city_name;
  String? temperature;
  String? humidity;

  Weather({
    required this.city_name,
    required this.temperature,
    required this.humidity,
  });
}
