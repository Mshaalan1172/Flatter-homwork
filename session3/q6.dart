//- Task 1: Create a map representing a student with keys for name, age, and grade.
// Add, update, and remove entries from the map, printing the map after each operation.
//- Task 2: Iterate over the map and print each key-value pair.

void main() {
  // Create a map representing a student
  Map<String, dynamic> student = {'name': 'John Doe', 'age': 20, 'grade': 'A'};

  // Print the initial map
  print('Initial Map:');
  print(student);

  // Add a new entry to the map
  student['gpa'] = 3.8;
  print('\nMap after adding GPA:');
  print(student);

  // Update an existing entry in the map
  student['age'] = 21;
  print('\nMap after updating age:');
  print(student);

  // Remove an entry from the map
  student.remove('grade');
  print('\nMap after removing grade:');
  print(student);

  // Iterate over the map and print each key-value pair
  print('\nIterating over the map:');
  student.forEach((key, value) {
    print('$key: $value');
  });
}
