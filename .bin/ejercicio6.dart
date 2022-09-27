import 'dart:io';

void main() {

  // Repite el ejercicio anterior impidiendo que se introduzca en el array valores 
  // repetidos.

  bool duplicado = false;
  bool esNumerico = false;
  dynamic respuesta;
  int iteraciones = 0;

  List<String?> array = [];
  List<String?> arrayNoDuplicado = [];


do{
    print("Dile al programa un listado de numeros separados por espacios. Los números repetidos no serán tomados en cuenta");

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

// Eliminamos los valores repetidos del array y mostramos el resultado final
arrayNoDuplicado = array.toSet().toList();
print("Listado de números sin repetir: $arrayNoDuplicado");

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