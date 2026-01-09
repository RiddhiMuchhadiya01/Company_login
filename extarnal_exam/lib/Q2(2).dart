void main() {
  List<int> numbers = [121, 37, 45, 32, 67, 59, 87];

  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  print("The largest number in the list is: $largest");
}
