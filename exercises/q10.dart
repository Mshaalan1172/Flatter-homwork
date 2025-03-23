// Employee Payroll System
//Implement an employee payroll system.
//Create a base Employee class with properties: name, id, and salary.
//Implement a method calculateSalary() in the base class.
//Create two subclasses:
//- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
//- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary()
// to compute salary based on hours worked

void main() {
  FullTimeEmployee employee1 = FullTimeEmployee('Alice', 1, 5000.0, 1000.0);
  employee1.calculateSalary();
  PartTimeEmployee employee2 = PartTimeEmployee('Bob', 2, 3000.0, 8.0, 20.0);
  employee2.calculateSalary();
}

class Employee {
  String? name;
  int? id;
  double? salary;
  Employee(this.name, this.id, this.salary);
  void calculateSalary() {}
}

class FullTimeEmployee extends Employee {
  double? bonus;
  FullTimeEmployee(String name, int id, double salary, this.bonus)
    : super(name, id, salary);
  @override
  void calculateSalary() {
    double totalSalary = salary! + bonus!;
    print('Total salary: $totalSalary');
  }
}

class PartTimeEmployee extends Employee {
  double? hoursWorked;
  double? hourlyRate;
  PartTimeEmployee(
    String name,
    int id,
    double salary,
    this.hoursWorked,
    this.hourlyRate,
  ) : super(name, id, salary);
  @override
  void calculateSalary() {
    double totalSalary = hoursWorked! * hourlyRate!;
    print('Total salary: $totalSalary');
  }
}
