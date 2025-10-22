void main() {
  const double segundosEmUmAnoTerrestre = 31557600;

  const Map<String, double> periodosOrbitais = {
    'Mercurio': 0.2408467,
    'Venus': 0.61519726,
    'Terra': 1.0,
    'Marte': 1.8808158,
    'Jupiter': 11.862615,
    'Saturno': 29.447498,
    'Urano': 84.016846,
    'Netuno': 164.79132,
  };

  double calcularIdadePlanetaria(int idadeEmSegundos, String planeta) {
    final double? periodo = periodosOrbitais[planeta];

    final double idadeEmAnosTerrestres =
        idadeEmSegundos / segundosEmUmAnoTerrestre;

    final double idadeNoPlaneta = idadeEmAnosTerrestres / periodo!;

    return idadeNoPlaneta;
  }

  const int idadeExemploSegundos = 756864000;

  print(
    'Idade na Terra: ${calcularIdadePlanetaria(idadeExemploSegundos, 'Terra').toStringAsFixed(2)} anos.',
  );

  print(
    'Idade em Mercúrio: ${calcularIdadePlanetaria(idadeExemploSegundos, 'Mercurio').toStringAsFixed(2)} anos mercurianos.',
  );

  print(
    'Idade em Netuno: ${calcularIdadePlanetaria(idadeExemploSegundos, 'Netuno').toStringAsFixed(2)} anos netunianos.',
  );
}
