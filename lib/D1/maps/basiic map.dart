void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> squares = numbers.map((n) => n * n).toList();

  print(squares);
}
