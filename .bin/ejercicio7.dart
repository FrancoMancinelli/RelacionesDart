import 'dart:io';

void main() {

  // Crea un array con los valores del 1 al 50. Crea un nuevo array que recorra el array 
  // anterior e introduzca en el nuevo array los números divisibles por 3.

  List<int> array = [];
  List<int> array2 = [];



    for (int i = 1; i <= 50; i++) {
      array.add(i);
    }
    print("Se ha creado un array vacio y se le han añadido los valores del 1 al 50");
    print(array);
        
    for (int i = 0; i < array.length; i++) {
      double operacion = array.elementAt(i) % 3;
      if(operacion == 0) {
        array2.add(array.elementAt(i));
      }
    }

    print("Se han guardado en otro array, todos los valores de la lista anterior, que sean divisibles por 3");
    print(array2);
}

