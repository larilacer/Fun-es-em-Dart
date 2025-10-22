void main() {
  int Function(int, int) operacao = multiplicar;

  int resultado = operacao(3, 4);

  print(resultado);
}

int multiplicar(int a, int b) {
  return a * b;
}
