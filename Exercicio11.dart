class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  void exibirInfo() {
    print('Produto: $nome | R\$ ${preco.toStringAsFixed(2)} | Estoque: $estoque');
  }
}

void main() {
  var p1 = Produto('Notebook', 3500.00, 10);
  var p2 = Produto('Mouse', 120.00, 50);
  var p3 = Produto('Teclado', 250.00, 30);

  p1.exibirInfo();
  p2.exibirInfo();
  p3.exibirInfo();
}