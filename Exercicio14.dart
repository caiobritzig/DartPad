abstract class Veiculo {
  void acelerar();
}

class Carro extends Veiculo {
  @override
  void acelerar() => print('Carro acelerando suavemente...');
}

class Moto extends Veiculo {
  @override
  void acelerar() => print('Moto acelerando rapidamente!');
}

void main() {
  List<Veiculo> veiculos = [Carro(), Moto()];
  veiculos.forEach((v) => v.acelerar());
}