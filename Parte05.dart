// FIXME: Mixins
// https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
// Nos permite asignar metodos o propiedades segun necesitemos
// Mediante 'with'

// mixins
abstract class Volador{
  void volar() => print('Estoy volando!');
}
abstract class Caminante{
  void caminar() => print('Estoy caminando!');
}
abstract class Nadador{
  void nadar() => print('Estoy nadando!');
}

abstract class Animal {}

abstract class Pez extends Aninal {}
abstract class Ave extends Aninal {}

class Paloma extends Ave with Caminante, Volador {}
class Tiburon extends Pez with Nadador {}

void main() {
  final paloma = new Paloma();
  paloma.caminar();
  paloma.volar();

  final tiburon = new Tiburon();
  tiburon.nadar();
}



// FIXME: Futures (Similar a Promises)
// Para tareas Asincromas
vodi main(){
  String urlAPI = 'https://rickandmortyapi.com/api/character/1';

  httpGet(urlAPI)
    .then( (data) {
      print(data);
    });

  print('ultima linea');
   // > ultima linea
  // > Data Response
}

class Duration{
  int seconds;
  Duration({this.seconds})
  int toString() => $seconds;
}

Future<String> httpGet(String url){
  return (
    Future.delayed(
      new Duration(seconds: 4),
      (){return 'Data Response';}
    )
  )
}



// FIXME: Async-Await
void main() async {
  String urlAPI = 'https://rickandmortyapi.com/api/character/1';

  String data = await httpGet(urlAPI);
  print(data)

  print('ultima linea');

  // > Data Response
  // > ultima linea
}