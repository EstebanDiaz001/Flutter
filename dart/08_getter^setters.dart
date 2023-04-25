void main(){
  
  final cuadrado = Square(side: -10);
  
//   cuadrado.side = -5;
  
  print('Area: ${cuadrado.area}');
  
}


class Square {
  
  double _side;
  
  
  Square({ required double side })
    : assert(side >=0, 'side must be >=0'),
      _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side(double value){
    print('setting new value $value');
    if (value < 0) throw 'Value debe ser > 0';
    
    _side = value;
    
  }
  
  
  double calculatedArea(){
    return _side * _side;
  }
}