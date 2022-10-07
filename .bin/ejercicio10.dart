abstract class Vehiculo {
  int? id;
  String? color;
  bool? encendido = false;
  
  void encender(){
    encendido = true;
    print("El vehiculo se ha encendido");
  }

  void apagar() {
    encendido = false;
    print("El vehiculo se ha apagado");
  }


}

class Motocicleta extends Vehiculo {
  int ruedas = 2;

  String toString(){
    return 'Identificador: ${this.id} \nColor: ${this.color} \nEncendido: ${this.encendido} \nRuedas: ${this.ruedas}';
  }

}



class Coche extends Vehiculo {
  int? puertas;
  
   Coche({this.puertas});
  

   String toString(){
    return 'Identificador: ${this.id} \nColor: ${this.color} \nEncendido: ${this.encendido} \nPuertas: ${this.puertas}';
  }

}

void main() {

  // Realiza la implementación de la clase abstracta vehículo. De esta clase heredan la clase motocicleta y la clase coche. 
  // Establece propiedades en cada una de las clases y sobreescribe alguna de ellas para que compruebes el funcionamiento de las clases en Dart.

  var coche1 = new Coche()
  ..color = "rojo"
  ..encendido = false
  ..id = 1111
  ..puertas = 4;

  var motocicleta1 = new Motocicleta()
  ..color = "azul"
  ..id = 9999;

  coche1.encender();
  print(coche1);

  print(motocicleta1);
}