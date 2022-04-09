int exec(int a, int b, Function(int, int) fn) {
  return fn(a, b);
}

String seuNome(String nome) {
  return 'Seu nome é: $nome';
}

main() {
  print('Trabalhando com funções!');
  final r = exec(2, 3, (a, b) => a + b);
  print('O resultado é $r');
  print(seuNome('João'));
}
