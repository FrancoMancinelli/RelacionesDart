class Coche {
  int? _id;
  String? color;
  bool? encendido;
  
   Coche({this.color, this.encendido = false});
  
  void encender(){
    encendido = true;
    print("El coche se ha encendido");
  }

  void apagar() {
    encendido = false;
    print("El coche se ha apagado");
  }

   String toString(){
    return 'Identificador: ${this._id} \nColor: ${this.color} \nEncendido: ${this.encendido}';
  }

  set identificador(int? id) {
    this._id = id;
  }

  int? get identificador {
    return _id;
  }

}

void main() {

  // A la clase coche anterior define una propiedad como privada. 
  // Realiza el getter y el setter para poder asignar valores a esa propiedad.

  var coche1 = new Coche()
  ..color = "rojo"
  ..encendido = false
  .._id = 1111;

  coche1.encender();
  print(coche1);

  coche1.identificador = 2222;
  print("El nuevo identificador del coche es: ${coche1.identificador}");
}