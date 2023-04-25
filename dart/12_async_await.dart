

void main() async {
  
  
  
print('Inicio del main');
  
  try{
    
    final value = await   httpGet('123456879');
  print(value);
    
  } catch (err){
    
    print('Error: $err');
    
  }
  

    
  
  
  
print('Fin del main');
}

Future<String> httpGet(String url) async {
  
    await Future.delayed(const Duration(seconds: 2));
  
    throw 'Error en la peticion';
  
//     return 'Tenemos un valor de la peticion http';
    
}
















