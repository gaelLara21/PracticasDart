import 'dart:io';

void main(List<String> arguments) {
  dividir();
  //bool r = esPar();
  print('¿El numero es par?: ${esPar()}');
  saludo1('Sinforosa');
  String nombre = 'tiburcio';
  saludo1(nombre);

  saludo2('Pancracio', 1985);
  String? nombre2;
  int? year2;
  saludo3(nombre2, year2);

  saludo4();
  saludo4('Transito');
  //saludo4(2040);
  saludo4('Curpentino', 2040);

  //llamando a saludo 5 con parametros nombrados
  saludo5(); //como son opcionales los parametros
  saludo5(name: 'Anacleto');
  saludo5(year: 1996, name: 'Anastacia');
  saludo5(year: year2);
  saludo5(year: 2040);

  saludo6(name: 'Filomeno', mensaje: 'Que pasión');
  saludo6(mensaje: 'Que tal', name: 'Acensio');

//Uso de funciones anonimas
  var alumnos = Map();
  alumnos[1] = 'Anacleto';
  alumnos[2] = 'Telesforo';
  alumnos[4] = 'Pantaleón';
  alumnos[5] = 'Panfilo';
  alumnos[6] = 'Tranquilino';
  // imprimiendo el mapa con la funcion anonimal
  alumnos.forEach((key, value) => print('Clave: $key, valor: $value'));
}

void dividir() {
  int n1 = 12;
  int n2 = 5;
  int cociente;
  int residuo;
  double resultado;

  resultado = n1 / n2;
  print('Resultado de dividir $n1 entre $n2 es $resultado');

  cociente = n1 ~/ n2;
  print('Cociente de la division entre $n1 y $n2 es $cociente');

  residuo = n1 % n2;
  print('Residuo de la division entre $n1 y $n2 es $residuo');
}

bool esPar() {
  //Funcion que regresa un valor boll y no recibe parametros
  var numero = 15;
  if (numero % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

void saludo1(String name) {
  print('Hola $name');
}

void saludo2(String name, int year) {
  //Funcion con dos parametros posicionales
  print('Saludo2 hola $name, estas en el año $year ');
}

void saludo3(String? name, int? year) {
  //Funcion con dos parametros posicionales
  //que podrian tener un valor nulo
  print('Saludo3 Hola $name, estas en el año $year');
}

void saludo4([String name = 'desconocido', int year = 2023]) {
  //Funcion con dos parametros opcionales
  //Se le pueden enviar 0, 1 o 2 parametros
  print('Saludo4 Hola $name, estas en el año $year');
}

void saludo5({String name = 'desconocido', int? year}) {
  //Funcion con dos parametros nombrados
  //Estos parametros son opcionales y
  //se pueden enciar en cualquier orden
  //se requieren inicializar o permitir valores null
  print('Saludo4 Hola $name, estas en el año $year');
}

void saludo6({required String name, required String mensaje}) {
  // Función con dos parametros nombrados pero requeridos
  print('Saludo6: $mensaje, $name');
}
