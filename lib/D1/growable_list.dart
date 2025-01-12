void main() {

  List<int> growableList = [];


  growableList.add(10);
  growableList.add(20);
  growableList.add(30);


  print("After adding elements: $growableList");


     growableList.addAll([40, 50, 60]);
  print("After adding multiple elements: $growableList");


  growableList.insert(1, 15);  //1st ta index number ,2nd ta value
    print("After inserting 15 at index 1: $growableList");


       growableList.remove(30);
  print("After removing 30: $growableList");


     growableList.removeAt(2); //specific index theke value remove
  print("After removing element at index 2: $growableList");

  print("Element at index 2: ${growableList[2]}");


      bool containsValue = growableList.contains(600);
  print("Does the list contain 600, $containsValue"); //list a value 50 ase ki na check


  print("Length of the list: ${growableList.length}"); //list er length or total index


        growableList.clear();
  print("After clearing the list: $growableList"); //sob value clear kore dewa
}
