//Hacer las pruebas en el método void Main() del programa
void main() {
  Persona p1 = Persona('Jesus', 'Acevedo', 21, 'Cartagena', 'jesus@gmail.com');

  print(p1);

  // Constructor desde JSON
  Persona p2 = Persona.fromJson({
    'nombre': null,
    'apellido': 'crismatt',
    'edad': 25,
    'ciudad': 'Medellín',
    'correo': 'crismatt@hotmail.com',
  });

  print(p2);

  // Funciones tradicionales
  print(saludo());
  print(mult(9, 7));

  // Funciones flecha
  print(saludoFlecha());
  print(div(9, 7));
}

//Clase Persona
class Persona {
  //Crear una clase Persona con los atributos de su preferencia
  String nombre;
  String apellido;
  int edad;
  String ciudad;
  String correo;

  // Crear un constructor que reciba dichos  atributos
  Persona(this.nombre, this.apellido, this.edad, this.ciudad, this.correo);

  //Crear un constructor por nombre personalizado que reciba datos en forma JSON
  Persona.fromJson(Map<String, dynamic> json)
    : nombre = json['nombre'] ?? 'Sin nombre',
      apellido = json['apellido'] ?? 'Sin apellido',
      edad = json['edad'] ?? 0,
      ciudad = json['ciudad'] ?? 'Desconocida',
      correo = json['correo'] ?? 'Desconocido';

  // Imprimir en consola haciendo uso de interpolación de string
  @override
  String toString() {
    return 'Persona(nombre: $nombre, apellido: $apellido, edad: $edad, ciudad: $ciudad, correo: $correo)';
  }
}

// Crear dos funciones tradicionales una con parámetros y otra sin parámetros.

// sin parámetros
String saludo() {
  return 'Hola desde la función tradicional';
}

// con parámetros
int mult(int a, int b) {
  return a * b;
}

// Crear dos funciones de flecha una con parámetros y otra sin parámetros.

// sin parámetros
String saludoFlecha() => 'Hola desde la función flecha';

// con parámetros
double div(int a, int b) => a / b;
