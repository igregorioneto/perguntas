main() {
  //Variáveis
  int a = 3;
  const b = 6;
  print(a + b);

  //Array
  var nomes = ['João', 'Julia', 'Lucia', 'Lucia', 'Lucia'];
  nomes.add('Fernanda');
  nomes.add('Luis');
  int quantidadeNomes = nomes.length;
  print('Nomes são: $nomes e a quantidade é: $quantidadeNomes');

  // Conjuntos

  // var conjunto = {1, 2, 3, 4, 5, 5, 5};
  Set<int> conjunto = {1, 2, 3, 4, 5, 5, 5};
  int quantidadeConjunto = conjunto.length;
  print('Conjuntos: $conjunto e a quantidade é: $quantidadeConjunto');

  // Map
  Map<String, double> notaDosAlunos = {
    'João': 8.5,
    'Fernanda': 9.8,
    'Julia': 8.9
  };

  for (var keys in notaDosAlunos.keys) {
    print('Keys = $keys');
  }

  for (var values in notaDosAlunos.values) {
    print('Values = $values');
  }

  for (var notasAluno in notaDosAlunos.entries) {
    print('O aluno ${notasAluno.key} é ${notasAluno.value}');
  }
}
