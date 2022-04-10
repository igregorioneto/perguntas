// ignore: unused_import
import 'package:perguntas/dart/composicao/modelo/venda.dart';
// ignore: unused_import
import 'package:perguntas/dart/composicao/modelo/client.dart';
// ignore: unused_import
import 'package:perguntas/dart/composicao/modelo/produto.dart';
// ignore: unused_import
import 'package:perguntas/dart/composicao/modelo/item.dart';

main() {
  var venda = Venda(
      cliente: Cliente(cpf: '123.456.789-00', nome: 'João'),
      itens: <Item>[
        Item(
            quantidade: 5,
            produto: Produto(
                codigo: 34, desconto: 0.25, nome: 'Caderno', preco: 10.00)),
        Item(
            quantidade: 10,
            produto:
                Produto(codigo: 67, nome: 'Caneta', preco: 5, desconto: 0.5))
      ]);

  print('O valor total da venda é R\$${venda.valorTotal}');
}
