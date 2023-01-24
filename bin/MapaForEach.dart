import 'dart:collection';

void main(List<String> arguments) {
  /*stdout.write('Porfavor, escribe tu nombre: ');
  String? name = stdin.readLineSync();
  print('Bienvenida $name al mundo de Dart');*/

  //LabThings es una Lista de dynamic
  var labThings = [
    'chairs',
    'tables',
    'PC',
    'Laptops',
    'code',
    'software',
    'mouse',
    'cable'
  ]; //The value of things

  print('Imprimiendo el contenido de labThings con print: $labThings');

  print('Imprimiendo el contenido de labThings con for: ');
  for (var e in labThings) {
    print(e);
  }

  var i = 1;
  var mapLabThings = {for (var e in labThings) i++: e};
  print('Contenido del mapa: $mapLabThings');

  i = 1;
  var cosasCon5Letras = {
    for (var e in labThings)
      if (e.length >= 5 && e.length <= 6) i++: e
  };
  print('Cosas del lab con 5 o 6 letras: $cosasCon5Letras');

  cosasCon5Letras[5] = 'control';
  print('Cosas del lab con 5 o 6 letras: $cosasCon5Letras');
  //Agregar solo si no esta en el mapa
  var valor1 = cosasCon5Letras.putIfAbsent(6, () => 'virus');
  print('Valor obtenido del mapa: $valor1');
  print('Actualizacion de cosas del lab con 5 o 6 letras: $cosasCon5Letras');

  // Obtenciòn de todas las keys del mapa

  print('Claves del mapa LabThings');
  for (var key in mapLabThings.keys) {
    print(key);
  }
  //Obtenciòn de los valores del mapa LabThings
  print('Obtencion de todos los valores');
  for (var value in mapLabThings.values) {
    print(value);
  }

  //Uso del forEach
  print('Imprimiendo con for each');
  mapLabThings.forEach((k, v) {
    print('Clave: $k, Valor: $v');
  });

  //Cambiando los vaores del mapa
  mapLabThings.forEach((key, value) {
    if (key % 2 == 0) mapLabThings[key] = '';
  });
  print('Nuevo contenido de map LabThings: $mapLabThings');

  //Buscando keys en el mapa LabThings
  print('¿El mapa contiene la clave 1? ${mapLabThings.containsKey(1)}');

  //Buscando keys en el mapa LabThings
  print('¿El mapa contiene el valor? ${mapLabThings.containsValue('Laptops')}');

  //SplayTreeMap para ordenar un mapa
  var frutas = SplayTreeMap();
  frutas[4] = 'Manzana';
  frutas[1] = 'Naranja';
  frutas[2] = 'Mango';
  frutas[5] = 'Papaya';
  frutas[0] = 'Platano';
  frutas[3] = 'Fresa';
  print('Mapa de frutas: $frutas');

  var frutas2 = Map.fromEntries(frutas.entries.toList());
  print('Frutas2: $frutas2');

  //Ordenando por valores

  var frutasOrdenadas = Map.fromEntries(
      frutas.entries.toList()..sort((e1, e2) => e1.value.compareTo(e2.value)));
  print('Frutas ordenadas por valor: $frutasOrdenadas');
}
