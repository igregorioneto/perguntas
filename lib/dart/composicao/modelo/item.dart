// ignore: unused_import
import 'package:perguntas/dart/composicao/modelo/produto.dart';

class Item {
  Produto produto;
  int quantidade;
  double _preco = 0;

  Item({required this.produto, required this.quantidade});

  double get preco {
    // Este operador ??= verifica se o valor a ser atribuído é diferente de null
    // _preco ??= produto.precoComDesconto;
    return _preco == 0 ? _preco = produto.precoComDesconto : 0;
  }

  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}
