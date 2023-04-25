void main(){
  
  print(greetEveryone());
  print(addTwoNumbers(1,1));
  print( saludarATodos(name: 'Esteban', message: 'Hi'));

}



String greetEveryone(){
  
  
  final saludo = 'Hello Everyone';
  return saludo;
}

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]){
  
  return a + b;
  
}

String saludarATodos({ required String name, String? message = 'Hola,'}){
  return '$message $name';
}