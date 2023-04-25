void main(){
  final Map pokemon = {
    "name"      : "Ditto",
    "hp"        : 12323,
    'abilities' : <String>['impostor','artaque'],
    'sprites'   : {
      'front': 'ditto/front.png',
      'back': 'ditto/back.png'
    }
  };
  

  
  print(pokemon);
  print('Name: ${pokemon['name'] }');
  print('Name: ${pokemon['abilities'] }');
  print('Name: ${pokemon['sprites'] }');
  print('Name: ${pokemon['sprites']['front'] }');
  print('Name: ${pokemon['sprites']['back'] }');
  
  
  
}