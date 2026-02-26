void saudar({required String nome, String titulo = 'Sr.', bool mostrarHora = false}) {
  String mensagem = 'Olá, $titulo $nome!';
  if (mostrarHora) {
    mensagem += ' Agora são ${DateTime.now().hour}h${DateTime.now().minute}min.';
  }
  print(mensagem);
}

void main() {
  saudar(nome: 'Carlos');
  saudar(nome: 'Ana', titulo: 'Dra.');
  saudar(nome: 'Pedro', titulo: 'Prof.', mostrarHora: true);
}