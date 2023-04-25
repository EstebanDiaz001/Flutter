void main(){
  
  final Map<String, dynamic> rawJson = {
    'nombre' : 'Esteban',
    'apellido' : 'Diaz',
    'segundoApellido' : 'Rodriguez',
  };
  
  final esteban = Persona.fromJson(rawJson);

//   final esteban = Persona(
//   nombre: 'Esteban',
//   apellido: 'Diaz',
//   segundoApellido: 'Rodriguez',
//   estaVivo: true
  
//   );
  
  print(esteban);
  
}


class Persona {
  String nombre;
  String apellido;
  String segundoNombre;
  String segundoApellido;
  bool estaVivo;
  
  Persona({
    required this.nombre,
    required this.apellido,
    this.segundoNombre = 'NA',
    required this.segundoApellido,
    required this.estaVivo
  });
  
  Persona.fromJson (Map<String, dynamic> json)
   :  nombre = json['nombre'] ?? 'No Nombre',
      apellido = json['apellido'] ?? 'No apellido',
      segundoNombre = json['segundoNombre'] ?? 'No Segundo Nombre',
      segundoApellido = json['segundoApellido'] ?? 'No Segundo Nombre',
      estaVivo = json['estaVivo'] ?? false;
    
  
  
  @override
  toString(){
    return '$nombre - $apellido - $segundoNombre - $segundoApellido - ${estaVivo ? 'Yes' : 'Nope'}';
  }
}