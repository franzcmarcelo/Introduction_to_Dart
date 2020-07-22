// FIXME: Getters y Setters
// Son declaradas como propiedades de una clase
void main(){
  final cuadrado = new Cuadrado();

  // Accediendo a la variable privada _lado mediante un Setter
  cuadrado.lado = 9;
  print(cuadrado);
  // > Lado: 9

  // Getter
  print( 'Area: ${cuadrado.area}' );
  // > Area: 81
}

class Cuadrado{
  // Hacemos variables privadas, declarandolas al iniciar con '_'
  // Estas solo sera accesibles dentro de esta clase
  double _lado;

  // Setter
  set lado(double valor){
    if(valor<=0){
      throw('El lado no puede ser menor o igual a 0');
    }
    _lado=valor;
  }

  // Getter
  double get area => _lado*_lado;

  toString() => 'Lado: $_lado';
}



// FIXME: Clases Abstractas
// Define clases que no se pueden instanciar
// Permiten obligar a otras clases a que implementen
// sus propiedades y metodos, incluyendo su tipado
// Mediante "implements"
vodi main(){
  final perro = new Perro();
  perro.emitirSonido();
  // >GUAUU!
}

abstract class Animal{
  int patas;
  void emitirSonido();
}

class Perro implements Animal{
  int patas;
  int años;
  void emitirSonido() => print('GUAUU!');
}



// FIXME: Extends
// Permite extender la funcionalidaad de una clase, mediante "extends"
void main(){
  final superman = new Heroe();
  superman.nombre = 'Clark Kent';
  superman.valentia = 90
}

// La hacemos abstracta para evitar crear instancias de esta clase
abstract class Personaje{
  String nombre;
  String poder;
}

class Heroe extends Personaje{
  int valentia;
}

class Villano extends Personaje{
  int maldad;
}