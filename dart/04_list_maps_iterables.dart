void main (){
  
  final numbers = [1,2,3,3,3,4,5,6,6,7,8,9,10];
  
  print('List original $numbers');
  print('Lenght lista  "${numbers.length}"');
  print('Index 0   :${numbers[0]}');
  print('Index 0   :${numbers.first}');
  print('Index 12  :${numbers.last}');
  print('Reversed  :${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  print('Iterable  :$reversedNumbers');
  print('Lits      :${reversedNumbers.toList()}');
  print('Set       :${reversedNumbers.toSet()}');
  
  final numbersGreaterThan5 = numbers.toSet().where((int num){
    return num > 5;
  });
  
  print('Mayor a 5 :$numbersGreaterThan5');
  
  
  
}