class Coche {
  int? id;
  String? color;
  bool? encendido;
  
   Coche({this.id, this.color, this.encendido = false});
  
  void encender(){
    encendido = true;
    print("El coche se ha encendido");
  }

  void apagar() {
    encendido = false;
    print("El coche se ha apagado");
  }

   String toString(){
    return 'Identificador: ${this.id} \nColor: ${this.color} \nEncendido: ${this.encendido}';
  }
}

void main() {

  // Realiza una clase llamada coche y crea una instancia de esa clase, asígnale dos propiedades y dos métodos. 
  // Asigna valores y comprueba que los valores se asignan correctamente.

  var coche1 = new Coche()
  ..color = "rojo"
  ..encendido = false
  ..id = 1111;

  coche1.encender();
  print(coche1);
}