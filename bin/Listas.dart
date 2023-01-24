void main() {
  //creando una lista con multiples tipos de datos

  List misMascotas = [
    'Milk',
    'Perro',
    'Chihuahaua',
    7,
    5,
    2,
    'KC',
    'Perro',
    'Mestizo',
    5,
    5,
    3,
    'Moji',
    'Gato',
    'Siames',
    1.5
  ];

  print('Lista de mis mascotas: ');
  print(misMascotas);

  var longitud = misMascotas.length;
  print('Los datos de la lista misMascotas son: $longitud');

  // agregando datos de otra persona

  misMascotas.add(4);
  misMascotas.add('Micho');
  misMascotas.add('Gato');
  misMascotas.add('Mestizo');
  misMascotas.add(3);

  print('La nueva lista de mascotas');
  print(misMascotas);
  longitud = misMascotas.length;
  print('El numero de datos en la lista son: $longitud');

  //Trabajando con una lista de un tipo definido

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  /*No se puede agregar valores que no sean int
   * numeros add(14.22): */

  if (numeros.isEmpty) {
    print('La lista esta vacia');
  }
  if (numeros.isNotEmpty) {
    print('La lista no esta vacia');
  }

  print('El primer numero es: ${numeros.first}');
  print('El ultimo numero es: ${numeros.last}');
  print('La posicion del numero 3 es: ${numeros.indexOf(3)}');
  numeros.add(8);
  numeros.add(22);
  numeros.add(33);
  numeros.add(100);
  
  print('La nueva lista de elementos es: ');
  print(numeros);
  print('La ultima posicion del elemento 3 es: ${numeros.lastIndexOf(3)}');
  
  List<int> otraLista = [10];
  for (int i=2; i<=10; i++){
    otraLista.add(10*i);
  }
  
  print('La tabla de 10 es: ');
  print(otraLista);

  final masNumeros = List.generate(150,(int index) => index);
  print(masNumeros);
}