imprimirProduto(int qtd, {required String nome, required double preco}) {
  for (var i = 0; i < qtd; i++) {
    print('Produto é $nome e seu valor é R\$$preco !!!');
  }
}

class Produto {
  String nome;
  double preco;

  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }

  // Parâmetros posicionais
  // Produto(this.nome, this.preco);
  // Parâmetros nomeados
  // Produto({required this.nome, required this.preco});

  Produto(this.nome, this.preco);
}

main() {
  print('Trabalhando com classes!');
  // Criando um objeto
  // var p1 = Produto(nome: 'Caneta', preco: 4.99);
  var p1 = Produto('Caneta', 4.99);
  print('Produto é ${p1.nome} e seu valor é R\$${p1.preco}');
  imprimirProduto(20, nome: p1.nome, preco: p1.preco);
}
