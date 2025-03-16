//Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
// use of for-each loops
import 'test.dart';

void main() {
  List<Duty> to_do = [
    Duty(
      id: 1,
      description: 'Flutter_course',
      due_date: '01/03/2025',
      isCompleted: false,
    ),
    Duty(
      id: 2,
      description: 'course_exam',
      due_date: '01/06/2025',
      isCompleted: false,
    ),
  ];

  // Add a new object to the list
  to_do.add(
    Duty(
      id: 3,
      description: 'test',
      due_date: '01/04/2025',
      isCompleted: false,
    ),
  );

  // Print the updated list
  to_do.forEach((Duty) {
    print(
      'duty no.  ${Duty.id} is ${Duty.description} , due_date is ${Duty.due_date} , status=${Duty.isCompleted}  ',
    );
  });
}
