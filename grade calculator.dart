// In Dart, we use a class (similar to a Kotlin data class)
class Student {
  String name;
  double? score; // Nullable input as requested in your slide

  Student(this.name, this.score);
}

void main() {
  // Creating a list of students, including some with edge cases (null scores)
  List<Student> students = [
    Student("Alice", 95.0),
    Student("Bob", 72.5),
    Student("Charlie", null), // Edge case: Nullable input
    Student("Diana", 55.0),
  ];

  for (var student in students) {
    // 1. Handling edge cases with the Elvis operator equivalent (??)
    // If score is null, we default it to 0.0
    double finalScore = student.score ?? 0.0;

    // 2. Using a switch expression (Dart's version of 'when')
    String grade = switch (finalScore) {
      >= 90 => "A",
      >= 80 => "B",
      >= 70 => "C",
      >= 60 => "D",
      _     => "F", // Default case
    };

    print("Student: ${student.name} | Score: ${student.score ?? 'N/A'} | Grade: $grade");
  }
}