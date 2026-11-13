
import 'dart:io';
void main(){
  String adso= "Analisis y Desarrollo de Software";
  //utilizar un operador ternario para validar si tiene mas de 15 caracteres convierta  a mayusculas, de lo contrario a minusculas
  String palabra = adso.length > 15 ? adso.toUpperCase() : adso.toLowerCase();
  print(palabra);

  //validar que numero es el mayor de 2 numeros ingresados
  int num1 = 25;
  int num2 = 30;

  if(num1 > num2) {
    print('El numero $num1 es el mayor ');
  } else if (num1 == num2) {
    print('Los numeros son iguales');
  } else {
    print('El numero $num2 es el mayor');
  }
  
  //2.realizar el ejercicio solicitando a  los datos num1 num2 al usuario

 stdout.write('Ingrese el primer número: ');
  int num3 = int.tryParse(stdin.readLineSync()?.trim() ?? '') ?? 0;

  stdout.write('Ingrese el segundo número: ');
  int num4 = int.tryParse(stdin.readLineSync()?.trim() ?? '') ?? 0;

   // 3. Realizarlo con operadores ternarios
  String resultado = (num3 > num4)
      ? 'El $num3 es el mayor'
      : (num3 == num4)
          ? 'Los números son iguales'
          : 'El $num4 es el mayor';

  print(resultado);
}


