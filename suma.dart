/// Suma dos números.
num suma(num a, num b) => a + b;

/// Suma todos los valores de [valores].
num sumaLista(List<num> valores) => valores.fold<num>(0, (total, valor) => total + valor);

void main() {
  print(suma(2, 3));
  print(sumaLista([1, 2, 3, 4]));
}
