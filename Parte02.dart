// FIXME: Tipo de dato: Lista (similar a Array)
void main() {
  // Tipando el contenido de un List
  List<int> numeros = [1, 2];
  numeros.add(3);
  print(numeros);

  // Asignando tamaño fijo
  List masNumeros = List(3);
  print(masNumeros);
  // > [null, null, null]

  masNumeros.add(1);
  // Error! No soporta add, porque ya tiene un tamaño definido

  masNumeros[0]=1;
  print(masNumeros);
  // > [1, null, null]
}



// FIXME: Tipo de dato: Map (similar a Object)
void main() {
  Map<String, dynamic> persona = {
    'nombre': 'Franz',
    'edad': 21,
    'solteria': false
  };

  // Acceso a los value mediante los key
  //   print( persona.nombre);
  // > Error! porque con "." estamos accediendo a alguna propiedad propia de Map
  print( persona[ 'nombre' ]);
  // > Franz

  // Como solo necesitamos un string con el nombre del key, podemos hacer:
  String propiedadEdad='edad';
  print( persona[ propiedadEdad ]);


  Map<int, String> listaPersonas = {
    1: 'Franz',
    2: 'Carlos',
    3: 'David'
  };

  // Agregando un elemento a un Map
  listaPersonas.addAll( { 4: 'Diego' } );
  print( listaPersonas[4] );
  // > Diego
}



// FIXME: Funciones
void main() {
  String message1 = saludar2('Hola', 'Franz');
  // Name Arguments, es indiferente al órden, obedece al nombre
  String message2 = saludar3( nombre: 'Franz', texto: 'Hola');
}
String saludar1(texto, name){
  return '$texto $nombre';
}
// Tipando parametros
String saludar2(String texto, String name){
  return '$texto $nombre';
}
// Name Arguments: Se tratan como argumentos posicionales
String saludar3( { String texto, String name } ){
  return '$texto $nombre';
}
// Tambien se puede utilzar Arrow Functions
String saludar4( { String texto, String name } ) => '$texto $nombre';