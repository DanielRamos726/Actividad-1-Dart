Future<String> obtenerDatos() async {
  print('Buscando datos en el servidor...');
  await Future.delayed(Duration(seconds: 2)); // simula la espera
  return 'Datos recibidos del servidor';
}

Future<void> main() async {
  print('Inicio del programa');

  String respuesta = await obtenerDatos(); // espera aquí 2 segundos
  print(respuesta);

  print('Fin del programa');
}