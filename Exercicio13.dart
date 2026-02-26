class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor. Saldo: R\$ $saldo');
  }

  void sacar(double valor) {
    if (valor > saldo) {
      print('Saldo insuficiente.');
    } else {
      saldo -= valor;
      print('Saque de R\$ $valor. Saldo: R\$ $saldo');
    }
  }
}

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  void aplicarRendimento(double taxa) {
    saldo += saldo * taxa;
    print('Rendimento de ${(taxa * 100).toStringAsFixed(1)}% aplicado. Saldo: R\$ $saldo');
  }
}

void main() {
  var conta = ContaPoupanca('Maria', 1000.0);
  conta.depositar(500);
  conta.sacar(200);
  conta.aplicarRendimento(0.05);
}