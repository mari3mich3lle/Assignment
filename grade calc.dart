class Student {
  String name;
  double? score;

  Student(this.name, this.score);

  // TASK: Function 1 - Formatting
  String getSummary() {
    return "$name scored ${score ?? 0.0}";
  }

  // TASK: Function 2 - Validation
  bool hasPassed() {
    return (score ?? 0.0) >= 60.0;
  }
}

// TASK: Custom Higher-Order Function
// Takes a list of students and a 'logic' function (lambda)
void processStudents(List<Student> list, Function(Student) action) {
  for (var student in list) {
    action(student);
  }
}

void main() {
  List<Student> students = [
    Student("Alice", 92.0),
    Student("Bob", 45.0),
    Student("Charlie", null),
    Student("Diana", 88.0),
  ];

  print("--- Collection Operation: Filtered Passing Students ---");
  // TASK: Collection operation (filter/map)
  var passingStudents = students.where((s) => s.hasPassed()).toList();
  
  passingStudents.forEach((s) => print(s.getSummary()));

  print("\n--- Custom Higher-Order Function with Lambda ---");
  // TASK: Lambda passed to a custom higher-order function
  processStudents(students, (s) {
    String status = s.hasPassed() ? "PASS" : "FAIL";
    print("${s.name.toUpperCase()}: $status");
  });
