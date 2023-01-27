import 'dart:io';

void main(List<String> arguments) {
  var unaLaptop =
      Computadora(marca: 'Alienware', cpu: 'Intel core i9', ram: 32);
  print('Información de la laptop que te venden en internet $unaLaptop');
  stdout.write('¿Esta computadoraes adecuada para esta materia?');

  String? respuesta = stdin.readLineSync();
  if (respuesta != null) {
    if (respuesta.contains('si')) {
      unaLaptop.configurarAdecuada = true;
    } else {
      unaLaptop.configurarAdecuada = false;
    }
  } else {
    print('No se puede saber lo solicitado porque se recibio null');
  }
  print('La laptop1 es adecuada para la materia: ${unaLaptop.esAdecuada}');

  unaLaptop.marca = 'Lenovo';
  unaLaptop.cpu = 'Celereon';
  unaLaptop.ram = 4;
}

class Computadora {
  //Campos
  String? marca;
  String? cpu;
  int? ram;
  bool adecuada = false;

  //Constructor
  /* Computadora(String m, String c, int r) {
    this.marca = m;
    this.cpu = c;
    this.ram = r;
  }*/

  //Forma corta de escribir el constructor con parametros nombrados
  Computadora({this.marca, this.cpu, this.ram});

  @override
  String toString() {
    return 'Marca: $marca, CPU: $cpu, RAM: $ram, ¿Es adecuada para DMM?: $adecuada';
  }

  // Getter si la variable es adecuada
  bool get esAdecuada {
    return adecuada;
  }

  set configurarAdecuada(bool valor) {
    adecuada = valor;
  }
}