import 'dart:math';
void main() {

// Investiga cómo podría generarse un valor aleatorio entre 1 y 10.

int numeroMinimoAleatorio = 1;
int numeroMaximoAleatorio = 10; 

int randomnum = numeroMinimoAleatorio + Random().nextInt((numeroMaximoAleatorio + 1) - numeroMinimoAleatorio);
  
print("Número generado aleatoriamente entre los valores $numeroMinimoAleatorio y $numeroMaximoAleatorio es = $randomnum");  

}
  