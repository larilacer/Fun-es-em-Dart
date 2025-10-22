void main() {
  double precoOriginal = 200.0;

  double precoComDescontoEspecifico = desconto(precoOriginal, 25);
  print('Preço original: R\$ ${precoOriginal.toStringAsFixed(2)}');
  print(
    'Com 25% de desconto, o preço final é: R\$ ${precoComDescontoEspecifico.toStringAsFixed(2)}',
  );

  double precoComDescontoPadrao = desconto(precoOriginal);
  print('Preço original: R\$ ${precoOriginal.toStringAsFixed(2)}');
  print(
    'Com o desconto padrão (10%), o preço final é: R\$ ${precoComDescontoPadrao.toStringAsFixed(2)}',
  );
}

double desconto(double preco, [double percentualDeDesconto = 10]) {
  double valorDoDesconto = preco * (percentualDeDesconto / 100);
  return preco - valorDoDesconto;
}
