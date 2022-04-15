import 'package:flutter/material.dart';
import 'package:perguntas/questionario.dart';
import 'package:perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Cinza', 'nota': 5},
        {'texto': 'Vermelho', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual seu animal de estimação favorito?',
      'respostas': [
        {'texto': 'Lobo', 'nota': 10},
        {'texto': 'Gavião', 'nota': 5},
        {'texto': 'Leão', 'nota': 3},
        {'texto': 'Tigre', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto': 'Leo', 'nota': 10},
        {'texto': 'Maria', 'nota': 5},
        {'texto': 'João', 'nota': 3},
        {'texto': 'Julia', 'nota': 1},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() => {
            _perguntaSelecionada++,
            _pontuacaoTotal += pontuacao,
          });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Perguntas',
            ),
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
