Map<int, String> produtos = {
  1: 'Notebook',
  2: 'Mouse',
  3: 'Teclado',
  4: 'Monitor',
  5: 'Headset',
};

String? buscarPorId(int id) => produtos.containsKey(id) ? produtos[id] : 'Produto não encontrado';

void listarProdutos() => produtos.forEach((id, nome) => print('ID: $id | $nome'));

void removerProduto(int id) {
  produtos.remove(id);
  print('Produto $id removido.');
}

void main() {
  listarProdutos();
  print(buscarPorId(3));
  removerProduto(2);
  listarProdutos();
}