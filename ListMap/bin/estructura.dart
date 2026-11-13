import 'dart:io';

void main(){
  // 3. Estructura de datos
  // > mayor que 
  // != distinto
  // <> distinto o diferente
  // ! negacion
  // % modulo
  // == igual
  // && Y para concatenar condidiones verdaderas 
  // || O para concatenar 2 condciones 1 alemenos verdadera 

  int edad = 19;

print('tu edad es: $edad años ');
  if (edad > 18) {
    print('Usted es una persona, con cedula');
  } else {
    print('Usted tiene tarjeta de identidad');
  }

  //OPERADORES TERNARIOS

  edad > 18 ? print ('Usted es una persona, con cedula'): print ('Tiene tarjeta de identidad');

  //pidiendo la edad al usuario

  stdout.write('ingrese la edad: ');
  String? entrada = stdin.readLineSync()?.trim() ?? ' ';
  int? edad2 = int.tryParse(entrada);

  print('Tu edad es: $edad2 años');

}