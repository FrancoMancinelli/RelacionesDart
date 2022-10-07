
import 'dart:io';  
import 'dart:math';

void main() {

  // // Investiga cómo introducir valores por consola y realiza un ejercicio que realice esta tarea.
    dynamic numero1;
    dynamic numero2;
    var minimo;
    var maximo;


    print("Dime un número:");
    numero1 = stdin.readLineSync();
    do {
    print("Dime un número más grande que el número anterior:");
    numero2 = stdin.readLineSync();

    minimo = int.parse(numero1);
    maximo = int.parse(numero2);

    if(minimo >= maximo) {
      print("El segundo número no es más grande que el anterior, vuelve a intentarlo");
    }

    } while (minimo >= maximo);

    int? randomnum = minimo + Random().nextInt((maximo + 1) - minimo);
  
    print("Número generado aleatoriamente entre los valores $minimo y $maximo es = $randomnum"); 
    

} 
  