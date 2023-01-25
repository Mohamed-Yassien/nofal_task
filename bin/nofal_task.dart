import 'dart:math';

void main(List<String> arguments) {
  ////// 1- Create a List containing random numbers consisting of positive and negative and convert all negative numbers into positive
  Random random = Random();

  List<int> numbersList;
  numbersList = List.generate(6, (_) => random.nextInt(20) - 10);

  print('list is $numbersList');

  for (int i = 0; i < numbersList.length; i++) {
    if (numbersList[i].isNegative) {
      numbersList[i] = numbersList[i].abs();
    }
  }
  print('list positive is $numbersList');

  ///////////////////////////////////////////////////////////////////////////////////////

  ////  2- Get two numbers from List whose sum equals 12 using method

  for (int i = 0; i < numbersList.length - 1; i++) {
    for (int j = i + 1; j < numbersList.length; j++) {
      if (numbersList[i] + numbersList[j] == 12) {
        print('${numbersList[i]} + ${numbersList[j]} = 12');
      }
    }
  }
}
