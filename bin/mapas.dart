void main() {
  
  // Trabajando con mapas
  
  var heroe1 = {'name':'Pancho Villa', 'feature': 'heroe rev',
              'muerte': 'asesinado', 'real-name': 'Doroteo Arango'};
  print(heroe1);
  heroe1['name'] = 'Francisco Villa';
  print(heroe1);
  print('tamaño del mapa: ${heroe1.length}');
  
  // Usando Objetos
  var heroe2 = Map();
  heroe2['name'] = 'Emiliano Zapata';
  heroe2['Feature'] = 'Heroe de la Revolucón';
  heroe2['nickname'] = 'Caudillo del sur';
  heroe2['muerte'] = 'asesinado';
  
  print(heroe2);
  print('tamaño del mapa: ${heroe2.length}');
  
  
  // Mapas con tipos de colores
  
  var colores = Map<String, int>();
  colores ['White'] = 255;
  colores['Black'] =0;
  colores['Red'] = 100;
  colores['Blue'] = 200;
  
  print(colores);
  colores.clear();
  print(colores);
  
  //Ver si existe una clave
  
  print('¿El heroe 1 contiene la propiedad de realname?');
  print(heroe1.containsKey('real-name'));
  print('¿El heroe 2 contiene la propiedad de realname?');
  print(heroe2.containsKey('real-name'));
  
}