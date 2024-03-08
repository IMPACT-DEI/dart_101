// You've designed a way to send a set of commands to a character using a single number.
// The code so that you send a number between 1 and 31,
// and the character turns it into a series of actions.
// Your task is to build the converter from a number between 1 and 31 to a sequence of actions.
// The sequence of actions is chosen by looking at the rightmost five digits of the number once it's been converted to binary.
// Start at the right-most digit and move left.
// The actions for each number place are:
// 00001 = wink
// 00010 = double blink
// 00100 = close your eyes
// 01000 = jump
// 10000 = Reverse the order of the operations in the command.

void main(List<String> args) {
  int number = 29;
  print(convertToCommand(number));
}

Map<int, String> commands = {
  0: 'wink',
  1: 'double blink',
  2: 'close your eyes',
  3: 'jump',
  4: 'reverse'
};

List<String> convertToCommand(int number) {
  if (number < 1 || number > 31) {
    return ['Input a valid number'];
  }
  List<String> binarynumber =
      number.toRadixString(2).split('').reversed.toList();
  List<String> output = [];
  for (int i = 0; i < binarynumber.length; i++) {
    if (binarynumber[i] == '1') {
      if (commands.containsKey(i)) {
        output.add(commands[i]!);
      }
    }
  }
  if(output.last == 'reverse'){
    output.remove('reverse');
    output = output.reversed.toList();
  }
  return output;
}













// void main(List<String> args) {
//   int number = 26;
//   print(commands(number));
// }

// Map<int, String> values = {
//   0: 'wink',
//   1: 'double blink',
//   2: 'close your eyes',
//   3: 'jump',
//   4: 'reverse',
// };

// List<String> commands(int number) {
//   List<String> binaryNumber =
//       number.toRadixString(2).split('').reversed.toList();
//   List<String> result = [];

//   for (int i = 0; i < binaryNumber.length; i++) {
//     if (binaryNumber[i] == '1') {
//       result.add(values[i] ?? '');
//     }
//   }

//   if (result.isNotEmpty && result.last == 'reverse') {
//     result.remove('reverse');
//     return result.reversed.toList();
//   }

//   return result;
// }
