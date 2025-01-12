void main() {
  List<List<int>> nestedList = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];

  List<List<int>> doubled = nestedList.map((innerList) {
    return innerList.map((n) => n * 2).toList();
  }).toList();

  print(doubled); 
}
