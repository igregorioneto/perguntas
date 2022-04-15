import 'package:flutter/material.dart';
import 'package:perguntas/questao.dart';
import 'package:perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? respostas = (temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null) as List<Map<String, Object>>?;

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas!.map((resp) {
          return Resposta(
            resp['texto'].toString(),
            () => quandoResponder(int.parse(['pontuacao'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
