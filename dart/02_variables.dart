void main(){
  
//   variables finales
  final String nombre = "Esteban";
  final int edad = 21;
  final bool? mayorDeEdad;
  final List<String> lenguajes = ['Python','c++'];
  final fortalezas = <String>['Python','c--'];
//   variables dynamic siempre pueden ser null
  
  dynamic dinamica = "Mensaje";
  dinamica = [1,2,3,4,5];
  dinamica = {5,4,3,2,1};
  dinamica = true;
  dinamica = () => true;
  dinamica = null;
  
  
  
  
  if(edad >= 18){
    mayorDeEdad = true;
  }else{
    mayorDeEdad = false;
  }
  
  
  
  print("""
  Mi nombre es $nombre
  Mi edad es $edad 
  Mayor de edad $mayorDeEdad
  Mis habilidades son $lenguajes
  Mis fortalezas son $fortalezas
  
  Dynamic "$dinamica"
  """ );
}



