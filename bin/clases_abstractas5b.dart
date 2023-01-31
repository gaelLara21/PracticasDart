void main(List<String> args) {
  final unCuadrado = new Cuadrado();
  print('El area de un cuadrado es: ${unCuadrado.area}');
}

abstract class FiguraGeometrica {
  double? area;
  double calcularArea();
}

class Cuadrado implements FiguraGeometrica {
  @override
  double? area;

  @override
  double calcuarArea() {
    double lado = 12.5;
    return lado * lado;
  }
}
