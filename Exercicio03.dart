void main() {
  String numStr = '42';
  int numInt = int.parse(numStr);
  double numDouble = double.parse(numStr);

  print('String "$numStr" → int: $numInt (${numInt.runtimeType})');
  print('String "$numStr" → double: $numDouble (${numDouble.runtimeType})');

  int valor = 100;
  String valorStr = valor.toString();
  print('int $valor → String: "$valorStr" (${valorStr.runtimeType})');
}