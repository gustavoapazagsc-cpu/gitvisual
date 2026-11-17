# Dart

[Dart](https://dart.dev) es un lenguaje de Google, tipado y orientado a objetos, con null safety y `async`/`await` en el lenguaje. Sirve para clientes, servidores, scripts y CLIs. Es el lenguaje de [Flutter](https://flutter.dev); también se usa solo, sin Flutter.

## Requisitos

- [Dart SDK](https://dart.dev/get-dart) 3.x
- Un editor con soporte de Dart (Cursor o VS Code con la extensión de Dart, o IntelliJ / Android Studio con el plugin de Dart)

Comprueba la instalación:

```bash
dart --version
```

## Crear un proyecto

```bash
dart create mi_app
cd mi_app
dart run
```

`dart create` genera un paquete con `pubspec.yaml`, `bin/` (ejecutable) y `lib/` (código de librería). Plantillas útiles:

```bash
dart create -t console-full mi_cli
dart create -t package mi_paquete
dart create -t server-shelf mi_servidor
```

## Hola mundo

`bin/mi_app.dart`:

```dart
void main(List<String> arguments) {
  print('Hola, Dart');
}
```

```bash
dart run
```

## Comandos habituales

| Comando | Para qué sirve |
| --- | --- |
| `dart pub get` | Descarga las dependencias de `pubspec.yaml` |
| `dart pub add nombre` | Añade un paquete de [pub.dev](https://pub.dev) |
| `dart pub add dev:test` | Añade una dependencia de desarrollo |
| `dart run` | Ejecuta el programa de `bin/` |
| `dart run bin/otro.dart` | Ejecuta un archivo concreto |
| `dart test` | Corre los tests de `test/` |
| `dart analyze` | Revisa tipos y avisos del analizador |
| `dart format .` | Formatea el código |
| `dart doc` | Genera la documentación de la API |
| `dart compile exe bin/mi_app.dart` | Genera un ejecutable nativo |

## Estructura típica

```text
mi_app/
├── bin/                   # punto de entrada (main)
├── lib/                   # código importable
│   └── mi_app.dart
├── test/                  # tests
├── pubspec.yaml           # nombre, SDK y dependencias
└── analysis_options.yaml  # reglas del analizador
```

El código de `lib/` se importa con el nombre del paquete:

```dart
import 'package:mi_app/mi_app.dart';
```

## Dependencias

En `pubspec.yaml`:

```yaml
name: mi_app
environment:
  sdk: ^3.5.0

dependencies:
  http: ^1.2.0

dev_dependencies:
  test: ^1.25.0
  lints: ^5.0.0
```

Después de editar el archivo, o al clonar el repo:

```bash
dart pub get
```

## Null safety y async

Las variables no aceptan `null` salvo que el tipo lleve `?`.

```dart
String nombre = 'Ada';
String? apodo; // puede ser null

Future<String> saludar() async {
  await Future<void>.delayed(const Duration(milliseconds: 200));
  return 'Hola, $nombre';
}
```

## Test mínimo

`test/mi_app_test.dart`:

```dart
import 'package:test/test.dart';

void main() {
  test('suma', () {
    expect(1 + 1, 2);
  });
}
```

```bash
dart test
```

## Enlaces

- Documentación: https://dart.dev/guides
- Tour del lenguaje: https://dart.dev/language
- Paquetes: https://pub.dev
- Referencia del SDK: https://api.dart.dev
- Efectivo Dart: https://dart.dev/effective-dart
