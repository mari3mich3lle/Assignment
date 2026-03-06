void main() {
  final words = ["apple", "cat", "banana", "dog", "elephant"];

  // 1. Create a map where keys are strings and values are their lengths
  final wordMap = { for (var e in words) e : e.length };

  // 2. Filter entries where length > 4 and print
  wordMap.entries
      .where((entry) => entry.value > 4)
      .forEach((entry) => print("${entry.key} has length ${entry.value}")); 
  // Output: apple has length 5, banana has length 6, elephant has length 7
}