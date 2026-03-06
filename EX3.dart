class Person {
  final String name;
  final int age;
  Person(this.name, this.age);
}

void main() {
  final people = [
    Person("Alice", 25),
    Person("Bob", 30),
    Person("Charlie", 35),
    Person("Anna", 22),
    Person("Ben", 28),
  ];

  // 1. Filter names starting with 'A' or 'B'
  final filteredAges = people
      .where((p) => p.name.startsWith('A') || p.name.startsWith('B'))
      // 2. Extract ages
      .map((p) => p.age)
      .toList();

  if (filteredAges.isNotEmpty) {
    // 3. Calculate average
    double average = filteredAges.reduce((a, b) => a + b) / filteredAges.length;
    
    // 4. Format and print (rounded to one decimal place)
    print("Average age: ${average.toStringAsFixed(1)}"); 
    // Result: 26.3
  }
}