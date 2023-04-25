void main(){
  
  final windplant = WindPlant(initialEnergy: 10);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
 
  print('wind:    ${chargePhone(windplant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
  
}

double chargePhone( EnergyPlant plant ){
  
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
}


enum PlantType {nuclear, wind, water}

abstract class EnergyPlant{
  
  double energyLeft;  
  final PlantType type;     //nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount);
  
}

// estends o implements
class WindPlant extends EnergyPlant {
  
  WindPlant({required double initialEnergy})
    :super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant{
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
    
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
  
}



// void main(){
  
//   final windplant = WindPlant(initialEnergy: 10);
//   final nuclearPlant = NuclearPlant(energyLeft: 1000);
 
//   print('wind:    ${chargePhone(windplant, 10)}');
//   print('nuclear: ${chargePhone(nuclearPlant, 1000)}');
  
// }

// double chargePhone( EnergyPlant plant, double consumo ){
  
//   if(plant.energyLeft < consumo){
//     throw Exception('Not enough energy');
//   }
  
//   return plant.consumeEnergy(consumo);
// }


// enum PlantType {nuclear, wind, water}

// abstract class EnergyPlant{
  
//   double energyLeft;  
//   final PlantType type;     //nuclear, wind, water
  
//   EnergyPlant({
//     required this.energyLeft,
//     required this.type
//   });
  
//   double consumeEnergy(double amount);
  
// }

// // estends o implements
// class WindPlant extends EnergyPlant {
  
//   WindPlant({required double initialEnergy})
//     :super(energyLeft: initialEnergy, type: PlantType.wind);
  
//   @override
//   double consumeEnergy(double amount){
//     return energyLeft - amount;
//   }
// }

// class NuclearPlant implements EnergyPlant{
  
//   @override
//   double energyLeft;
  
//   @override
//   final PlantType type = PlantType.nuclear;
  
//   NuclearPlant({required this.energyLeft});
    
//   @override
//   double consumeEnergy(double amount){
//     return energyLeft - (amount * 0.5);
//   }
  
// }

