import 'dart:io';

void main() {

  // Realiza una función que se le pase un valor y salga por pantalla la tabla de multiplicar
  // de ese número.

  bool esNumerico = false;
  dynamic respuesta;
  int numero = 0;

  do {
    print("Dime un número: ");

    respuesta = stdin.readLineSync();

    esNumerico = esUnNumero("$respuesta");

    if(esNumerico != true) {
      print("No has introducido un número, vuelve a intentarlo");
    } else {
      numero = int.parse(respuesta);
    }
    
  } while (esNumerico == false);
  
  for (int i = 1; i <= 10; i++) {
    int operacion = numero*i;
    print("$numero * $i = $operacion");
  }
}

/**
 * Función que nos permite saber si el valor introducido por parametro es
 * un valor númerico o no. En caso de serlo retornará TRUE, y en caso de 
 * no ser un número, retornará FALSE.
 */
bool esUnNumero(dynamic d) {
 if (d == null) {
   return false;
 }
 return double.tryParse(d) != null;
}