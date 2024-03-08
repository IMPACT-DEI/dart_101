// Write a password generator in Dart. Be creative with how you generate passwords
// - strong passwords have a mix of lowercase letters, uppercase letters, numbers,
// and symbols.
// The passwords should be random, generating a new password every time.
// Include your run-time code in a main method

import 'dart:convert';
import 'dart:math';

void main(List<String> args) {
  int length = 9;
  print(generatePassword(length));
}

String generatePassword(int length) {
  Random rng = Random(); // initialize the class to generate random numbers
  // generate a list of [length] elements, each as random integer [0,255] and then shuffle the list.
  List<int> charint = List.generate(length, (index) => rng.nextInt(255))..shuffle();
  // encode the list as a string and return it
  return base64Encode(charint);
}