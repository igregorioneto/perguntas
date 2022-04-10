// ignore: unused_import
import 'package:perguntas/dart/composicao/modelo/client.dart';
// ignore: unused_import
import 'package:perguntas/dart/composicao/modelo/item.dart';

class Venda {
  Cliente cliente;
  List<Item> itens;

  Venda({required this.cliente, this.itens = const []});

  double get valorTotal {
    return itens
        .map((item) => item.quantidade * item.preco)
        .reduce((total, item) => total + item);
  }
}
