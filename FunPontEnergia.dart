int calcularPontosDeEnergia(int nivel, List<int> valoresBase) {
  Set<int> multiplosUnicos = {};

  for (int valor in valoresBase) {
    if (valor == 0) continue;
    for (int multiplo = valor; multiplo < nivel; multiplo += valor) {
      multiplosUnicos.add(multiplo);
    }
  }

  if (multiplosUnicos.isEmpty) {
    return 0;
  }

  return multiplosUnicos.reduce((a, b) => a + b);
}

void main() {
  int nivelJogador = 20;
  List<int> itensMagicos = [3, 5];

  int pontosGanhos = calcularPontosDeEnergia(nivelJogador, itensMagicos);

  print('Para o nível $nivelJogador e itens com valores base $itensMagicos:');
  print('O jogador ganha $pontosGanhos pontos de energia.');
}
