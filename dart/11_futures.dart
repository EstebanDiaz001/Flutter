

void main(){
  
  
  
print('Inicio del main');
  
  
  
  httpGet('123456879')
    .then(
      (value){
      print(value);
      })
    .catchError(
      (err){
        print('Error: $err');
      });
  
  
  
print('Fin del main');
  
  
  
}

Future httpGet(String url){
  return Future.delayed(Duration(seconds: 2), (){
    
    
    throw 'error en la peticion';
    // return 'respuesta de la peticion http';
    
  });
}
















