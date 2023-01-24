//import 'dart:io';

import 'dart:math';

void main(List<String> arguments) {
  /* stdout.write('Por favor, escribe tu nombre: ');
  String? name = stdin.readLineSync();
  print('Bienvenido $name al mundo de Dart');*/

  var labThings = [
    'Chairs',
    'Tables',
    'PC',
    'Laptops',
    'Code',
    'Software',
    'Mouse',
    'Cable'
  ];

  var i = 1;
  var mapLabThings = {for (var e in labThings) i++: e};
  print('Contenido del mapa $mapLabThings');
}
