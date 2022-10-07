import 'dart:io';

main() async {

  // Crea un ejercicio donde apliques los conocimientos adquiridos con Future, async y await.

  print('La version es: ${await version()}');
}

Future<String> version() async {
  String versionActual = await verificarVersion();
    return versionActual;
  }
  
 String verificarVersion() {
   sleep(Duration(seconds: 5));
   return 'BETA 1';
}