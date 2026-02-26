class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  Produto.semEstoque(String nome, double preco) : this(nome, preco, 0);

  Produto.promocao(String nome, double preco, int estoque)
      : this(nome, preco * 0.8, estoque);

  void exibirInfo() {
    print('Produto: $nome | R\$ ${preco.toStringAsFixed(2)} | Estoque: $estoque');
  }
}

void main() {
  var p1 = Produto('Notebook', 3500.00, 10);
  var p2 = Produto.semEstoque('Mouse', 120.00);
  var p3 = Produto.promocao('Teclado', 250.00, 30);

  p1.exibirInfo();
  p2.exibirInfo();
  p3.exibirInfo();
}