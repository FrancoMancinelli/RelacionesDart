void main() {

  // Crea un programa en el que declares y asignes todos los tipos predefinidos de
  // variables que permite DART. Realiza operaciones matemáticas entre ellos y
  // comprueba si puedes operar entre todos los tipos sin problemas.
  int numero1 = 5;
  int numero2 = 10;
  double decimal = 12.7;
  bool booleano = true;
  String palabra1 = 'Hola';
  String palabra2 = 'Adiós';
  dynamic dinamico1 = false;
  dynamic dinamico2 = 20;

  var resultado1 = numero1 + numero2;
  var resultado2 = decimal * dinamico2;
  String resultado3 = palabra1 + ' ' + palabra2;
  
  print('El resultado de sumar $numero1 y $numero2 es = $resultado1');
  print('El resultado de multiplicar $decimal y $dinamico2 es = $resultado2');
  print('El resultado de juntar $palabra1 con $palabra2 es = $resultado3');

}