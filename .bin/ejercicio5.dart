import 'dart:io';

void main() {

  // Crea un programa que reciba una lista de números por teclado y los introduzca en un 
  // array. Visualiza los resultados

  bool esNumerico = false;
  dynamic respuesta;
  int iteraciones = 0;

  List<String?> array = [];

do{
    print("Dile al programa un listado de numeros separados por espacios");

    respuesta = stdin.readLineSync();
    array.addAll(respuesta.toString().split(' '));

    //Comprobamos que todos los valores sean númericos
    for (int i = 0; i < array.length; i++) {
      
      if(!esUnNumero(array.elementAt(i))) {
        print("Uno de los valores no es un número, vuelve a intentarlo");       
        esNumerico = false;
        array.clear();
        break;
      } else {
        esNumerico = true;
      }
    }

} while (!esNumerico);

  print("Listado de números: $array");

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