

void main() async {
  
  
  
print('Inicio del main');
  
  try{
    
    final value = await   httpGet('123456879');
  print('Exito: $value');
    
  } on Exception catch(err){
    
    print('Tenemos una exception $err');
    
  } catch (err){
    
    print('Fatal Error: $err'); 
    
  } finally{
    
    print('Fin del try y catch');
    
  }
  
  

    
  
  
  
print('Fin del main');
}

Future<String> httpGet(String url) async {
  
    await Future.delayed(const Duration(seconds: 2));
  
    throw Exception('No hay parametros en el url');
  
//     return 'Tenemos un valor de la peticion http';
    
}
















