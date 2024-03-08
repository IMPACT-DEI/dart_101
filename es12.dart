// Write a program (function) that takes a list and returns a new list that contains
// all the elements of the first list minus all the duplicates.

void main(List<String> args) {
  // list of numbers with duplicates
  List<int> input = [1, 4, 1, 2, 3, 1, 2, 4, 6, 7];
  print(removeDuplicates(input));
  // it works the same with strings
  List<String> inputstr = ['a', 'b', 'a'];
  print(removeDuplicates(inputstr));
}

List removeDuplicates(List input) {
  List output = [];
  
  // standard for-in loop
/*  for (var element in input) {
    if (!output.contains(element)) {
      output.add(element);
    }
  } */

  //using the forEach method of the list
  input.forEach((element) {
    if (!output.contains(element)) {
      output.add(element);
    }
  });
  return output;
}


























// import 'dart:math';

// void main() {
//   // initialize random and use it to generate ten random numbers between [0, 10[
//   final random = Random();
//   List<int> randList = List.generate(10, (_) => random.nextInt(10));

//   print("Initial list is $randList\n");
//   print("Cleaned list is ${removeDuplicates(randList)}");
// }

// List<int> removeDuplicates(List<int> initialList) {
//   final List<int> secondList = [];
//   for (int element in initialList) {
//     // check wether an element is already inside the new list
//     if (secondList.contains(element)) {
//       // yes, the we do not want to add it into the new list
//       continue;
//     } else {
//       // no, then add it
//       secondList.add(element);
//     }
//   }
//   return secondList;
// }