void main() {
  List<int> maximo_minimo(List<int> numeros) {
    int maximo = numeros[0];
    int minimo = numeros[0];

    for (int n in numeros) {
      if (n > maximo) {
        maximo = n;
      }

      if (n < minimo) {
        minimo = n;
      }
    }

    return [maximo, minimo];
  }

  print(maximo_minimo([4, 7, 2, 8, 10, 3]));
}
