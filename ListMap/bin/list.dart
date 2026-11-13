void main(){
    //variable List sino se declara tipo de dato puedo utilizar cualquier tipo
    List operacion = [24, true, 'Dany', 'opera', 50.5];
    print(operacion);
    //List int que reciba unicamente numeros
    List<int> numeros = [1, 2, 3, 4, 5,6];
    print(numeros);

    //Variable tipo Map recibe elementos clave/valor
    Map<int, String> opciones = {
        2: "Alemania",
        5: "Colombia",
        7: "Nomina",
        51: "Colegio",
        80: "Septiembre",
        3: '67890'
    };
    print(opciones);
    print(opciones[51]);

    // String, dynamic para venta productos
    
    Map<String, dynamic> productos = {
        'id': 001,
        'nombre': 'Pantalones',
        'precio': 45.500,
        'disponible': true,
        'talla': ['30', '32', '34', '36', '38' ]
    };
    print(productos);
    print(productos['talla']);

    //conbinar datos Map y List 
    List personas = [
        {
            'tipo': 'CC',
            'identificacion': 1060879263,
            'Nombres': 'Juan Camilo',
            'Apellidos': 'Duarte Vallejo',
            'Altura': 180.2
        },
        {
            'tipo': 'CC',
            'identificacion': 1060427192,
            'Nombres': 'Maria Alejandra',
            'Apellidos': 'Ruiz rodrigues',
            'Altura': 167.7
        },
        {
            'tipo': 'CC',
            'identificacion': 1060096030,
            'Nombres': 'Jose Alejandro',
            'Apellidos': 'Lopez Bravo',
            'Altura': 172.4
        },
        {
            'tipo': 'CC',
            'identificacion': 1060243517,
            'Nombres': 'Valery Mariana',
            'Apellidos': 'Quigua Llanten',
            'Altura': 179.8
        },
    ];
    List <Map> pedidos = []; // Restricta
}//find

