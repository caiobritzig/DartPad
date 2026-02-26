double executarOperacao(double a, double b, double Function(double, double) operacao) {
  return operacao(a, b);
}

void main() {
  print('Soma: ${executarOperacao(10, 5, (a, b) => a + b)}');
  print('Subtração: ${executarOperacao(10, 5, (a, b) => a - b)}');
  print('Multiplicação: ${executarOperacao(10, 5, (a, b) => a * b)}');
  print('Divisão: ${executarOperacao(10, 5, (a, b) => a / b)}');
}