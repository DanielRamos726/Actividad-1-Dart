void main(){
  //1. Funciones que no retornan y no resiven valores
  void saludar(){
    print('Saludo a todos los prendices de ADSO');
  }
  saludar();

  //2. Funciones que retornan y no resiven valores
  String saludar2(){
    return 'Hola aprendices de ADSO grupo 3407766';
  }
  saludar2();
  print(saludar2());

  //3. Funciones que retornan y resiven valores 
  String saludar3(String nombre){
    return 'Hola aprendiz de ADSO: $nombre';
  }
  print(saludar3('JUAN ANDRES'));

  //4. Funciones que no retornan y resiven valores
  void saludar4(String nombre){
    print('Bienvenido!... $nombre');
  }
  saludar4('JUAN PABLO');

  List saludar5(){
    return ['Hola amigos: ', 'JUAN', 'PEDRO', 9000, true];
  }

  List Resultado = saludar5();
  print(Resultado);
}