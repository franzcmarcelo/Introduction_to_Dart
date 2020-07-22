// FIXME: Clases
void main() {
  // final: variable que no va a cambiar su valor, similar a const, pero difiera en la forma de compilacion
  final wolverine = new Heroe( nombre: 'Logan', poder: 'Regeneracion'); // o simplemente ... = Heroe('Logan', 'Regeneracion');

  print(wolverine);
  // Antes del Override toString
  // > Instance of 'Heroe'

  print(wolverine); // o print(wolverine.toString);
  // Despues del Override toString
  // > Nombre: Logan - Poder: Regeneracion

  print(wolverine.nombre);
  // > Logan

  final hulk = new Heroe( nombre: 'Bruce');
  print(hulk)
  // > Nombre: Burce - Poder: Desconociso
}
class Heroe{
  String nombre;
  String poder;
  Heroe({ String nombre, String poder = 'desconocido' }){
    this.nombre=nombre;
    this.poder=poder;
  }
  // Override print
  String toString(){
    return 'Nombre: ${ this.nombre } - Poder: ${ this.poder }';
  }
}



// FIXME: Forma corta de definir propiedades de las clases
void main() {
  final wolverine = new Heroe(
    nombre: 'Logan',
    poder: 'Regeneracion'
  );
}
class Heroe {
  String nombre;
  String poder;

  Heroe({ this.nombre, this.poder })

  // Aqui, dentro de la Clase es opcional el uso de 'this'
  // ${this.nombre} == $nombre
  String toString() => 'Nombre: $nombre - Poder: $poder';
}



// FIXME: Constructores con nombre (podemos crear cuantos creamos)

import 'dart:convert'; // Para transformar informacion (como json)

void main(){
  // Simulando peticion a una APIs que nos retorna un json
  final rawJson = '{ "nombre": "wolverine", "poder": "Regeneracion"}';

  // Transformando un json en un Map iterable
  Map parsedJson = json.decode( rawJson );

  // Creando una instacnai con el constructor con Nombre
  final wolverine = new Hero.fromJson( parsedJson );

  print(wolverine.nombre); // > logan
}
class Heroe{
  String nombre;
  String poder;

  // Constructor clasico
  Heroe(this.nombre, this.poder)

  // Constructor con nombre, para poder crear instancias mediante el Map parsedJson
  Hero.fromJson( Map parsedJson ){
    nombre = parsedJson['nombre'];
    poder = parsedJson['poder'];
  }
}