void main() {
  final spiderman = Hero(name: 'arana humana');
  print(spiderman.toString());
  print(spiderman.name);
  print(spiderman.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});
  
  
  
  @override
  String toString(){
    return '$name - $power';
  }
}
