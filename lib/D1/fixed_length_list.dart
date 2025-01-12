import 'dart:core';

void main(){
  List<int> fixedList = List<int>.filled(8,1, growable: false);
  print('fixed length: $fixedList');

  fixedList[0] = 10;
  fixedList[1] = 20;
  fixedList[2] = 30;
  fixedList[3] = 40;
  fixedList[4] = 50;
  fixedList[5] = 60;
  fixedList[6] = 70;
  fixedList[7] = 80;  //jodi beshy index dewa hoe tahole  Invalid value: Not in inclusive range 0..7: 8


  print('fixed length: $fixedList');

  print("Element at index 2: ${fixedList[4]}");

  try {
    fixedList.add(60); // Error: Unsupported operation
  } catch (e) {
    print("Error: Cannot add elements to a fixed-length list");
  }


  try {
    fixedList.removeAt(2);
  } catch (e) {
    print("Error: Cannot remove elements from a fixed-length list");
  }
}

//fixed list theke element add or remove kora jae na