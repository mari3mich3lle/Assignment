List<int> processList(List<int> numbers, bool Function(int) predicate) {
  List<int> result = [];
  for (var number in numbers) {
    if (predicate(number)) {
      result.add(number);
    }
  }
  return result;
}

void main() {
  val nums = [1, 2, 3, 4, 5, 6];
  // Test with: filter even numbers
  val even = processList(nums, (it) => it % 2 == 0);
  print(even); // [2, 4, 6]
}