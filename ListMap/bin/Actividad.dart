void main(){
  //Parte 1

  //Punto 1 "Hola Mundo". 
  print('Hola mundo');

  //Punto 2 Declara una variable de tipo String que contenga tu nombre y otra de tipo int con tu edad.
  String nombre = 'Daniel Stiven Ramos Valdes';
  int edad = 17;
  print('Mi nombre es: $nombre y mi edad es: $edad');

  //Punto 3 var y final
  var ciudad = 'Popayan';
  ciudad = 'Nariño'; //var si sepuede cambiar
  final pais = 'Colombia';
  // pais = 'Venezuela'; //final no se podria cambiar porque daria error 
  print ('$pais, $ciudad');

  //parte 2

  //Punto 4  Números y Strings
  double altura = 1.71;
  String cita = '"Hay tres cosas que no se pueden ocultar por mucho tiempo: el sol, la luna y la verdad. Buda"';
  print('altura: $altura y cita favorita: $cita');

  //Punto 5  Booleanos y Condicionales
  bool esMayorDeEdad = edad >= 18;
  if (esMayorDeEdad) {
    print('Eres mayor de edad');
  } else {
    print('Eres menor de edad');
  }

  //Punto 6  Listas
  List<String> amigos = ['Juan', 'Sara', 'Santiago'];
  for (String amigo in amigos) {
    print('Amigo: $amigo');
  }

  //Punto 7  Sets
  Set<String> ciudades = {'Nariño', 'Medellín', 'Cali'};
  ciudades.add('Bogotá');
  ciudades.add('Cali'); // No se agregará porque ya existe
  ciudades.remove('Medellín');
  print('Ciudades: $ciudades');

  //Punto 8  Mapas
  Map<String, String> capitales = {
    'Colombia': 'Bogotá',
    'México': 'Ciudad de México',
    'Argentina': 'Buenos Aires'
  };
  print(capitales['Colombia']);
  
  //Parte 3

  //Punto 9  Operadores Aritméticos
  int a= 10;
  int b= 5;
  int suma = a + b;
  int resta = a - b;
  int multiplicacion = a * b;
  double division = a / b;
  print('Suma: $suma');
  print('Resta: $resta');
  print('Multiplicación: $multiplicacion');
  print('División: $division');

  //Punto 10  Operadores de Comparación
  int x = 20;
  int y = 5;
  bool iguales = x == y;
  bool mayor = x > y;
  bool diferentes = x != y;
  print ('$x == $y: -> $iguales');
  print ('$x > $y: -> $mayor');
  print ('$x != $y: -> $diferentes');

  //Parte 4

  //Punto 11 Funciones
  int resultado= sumar(40, 5);
  print('40+5 = $resultado');

  //Punto 12 Records
  var libro = (
    titulo: 'La divina comedia',
    autor: 'Dante Alighieri',
    anio: 1320,
  );
  print('Libro: ${libro.titulo}, Autor: ${libro.autor}, Año: ${libro.anio}');

  //Parte 5

  //Punto 13 Análisis de una palabra
  String palabra= 'Software';
  print('Longitud: ${palabra.length}');
  print('Primera letra: ${palabra[0]}');
  print('Últimas 3 letra: ${palabra.substring(palabra.length - 3)}');
  String resultadoPalabra = palabra.length >5 ? palabra.toUpperCase() : palabra;
  print(resultadoPalabra);

  //Punto 14 Cree una lista de tipo List<double> con 5 notas académicas. 
  List<double> notas = [4.5, 3.8, 4.2, 4.0, 3.9];
  print (notas);
  double promedio = notas.reduce((a, b) => a + b) / notas.length;
  print('Promedio: ${promedio.toStringAsFixed(1)}');
  if (promedio >= 3.0) {
    print('El aprendiz ha aprobado');
  } else {
    print('El aprendiz ha reprobado');
  }

  //Punto 15  Lista Dinámica de Información Mixta
  List<dynamic> datos =['Juan',16,true,[10,20,30]];
  for (var elemento in datos){
    print(elemento);
  }

  //Punto 16 Información personal con Map 
  Map<String, dynamic> personal ={
    'Identificacion': 1060528517,
    'Nombre': 'Juliana',
    'Edad': 18,
    'Estatura': 1.65
  };
  print('Edad: ${personal['Edad']}');
  print('Estatura: ${personal['Estatura']}');

  //Punto 17 Cree una función que reciba una lista de números y retorne un Map
  List<int>numeros = [5,12,5,95,39,4];
  Map<String, int>resultados=analizarLista(numeros);
  print(resultados);

  //Punto 18 Implemente una clase CuentaBancaria
  CuentaBancaria cuenta = CuentaBancaria(200000);
  print('Saldo Inicial: \$${cuenta.consultarSaldo()}');
  cuenta.depositar(40000);
  cuenta.depositar(45000);
  cuenta.retirar(20000);
  cuenta.retirar(-500); //sera rechazado por estar en sigo negativo
  print('Saldo final: \$${cuenta.consultarSaldo()}');

  //Punto 20
   // 1) Operador ??
  String? apodo; // sin valor, es null
  print('Apodo: ${apodo ?? 'Sin apodo'}');

  apodo = 'Dani'; // ahora sí tiene valor
  print('Apodo: ${apodo ?? 'Sin apodo'}');

  // 2) Operador .. (cascada)
  List<int> lista = []
    ..add(5)
    ..add(10)
    ..add(15);
  print('Lista: $lista');

  // 3) Operador ~/ (división entera)
  print('17 / 5  = ${17 / 5}');
  print('17 ~/ 5 = ${17 ~/ 5}');

  //Punto 21
  print('hola mundo'.capitalizar()); 
  print(8.esPar);                    
  print(7.esPar);       

  //Punto 22
  // Variable NO nula: siempre debe tener valor
  String nombres = 'Jose';
  print('Nombre: $nombres');
  // nombre = null;  // ERROR: Dart no lo permite

  // Variable que SÍ puede ser nula: lleva ?
  String? apellido;
  print('Apellido: $apellido');            // null

  // Uso seguro del valor nulo
  print(apellido?.length);                 // null, sin error
  print(apellido ?? 'Sin apellido');       // Sin apellido

  // Cuando ya tiene valor, se puede usar normal
  apellido = 'Pérez';
  print(apellido.length);                  // 5             

}

//Punto 11
int sumar(int num1, int num2) {
  return num1 + num2;
}

//Punto 17
Map<String, int> analizarLista(List<int> numeros) {
  int mayor = numeros[0];
  int menor = numeros[0];
  for (int n in numeros) {
    if (n > mayor) mayor = n;
    if (n < menor) menor = n;
  }
  return {
    'cantidad': numeros.length,
    'mayor': mayor,
    'menor': menor,
  };
}

//Punto 18
class CuentaBancaria{
  double _saldo;
  CuentaBancaria(this._saldo);
  void depositar(double monto){
    if(monto<=0){
      print('Monto invalido para depositar');
      return;
    }
    _saldo +=monto;
    print('Depositos de \$$monto realizado');
    return;
  }

  void retirar(double monto){
    if(monto <0){
      print('No se permiten retiros negativos');
      return;
    }
    if(monto >_saldo){
      print('Fondos Insuficientes');
      return;
    }
    _saldo-=monto;
    print('Retiro de \$$monto realizado');
  }

  double consultarSaldo(){
    return _saldo;
  }
}

//Punto 21
extension StringExtras on String {
  // Pone la primera letra en mayúscula
  String capitalizar() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }
}

extension IntExtras on int {
  // Dice si el número es par
  bool get esPar => this % 2 == 0;
}
