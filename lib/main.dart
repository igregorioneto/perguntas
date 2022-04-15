import 'package:flutter/material.dart';
import 'package:perguntas/questionario.dart';
import 'package:perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': ['Preto', 'Cinza', 'Vermelho', 'Branco']
    },
    {
      'texto': 'Qual seu animal de estimação favorito?',
      'respostas': ['Lobo', 'Gavião', 'Leão', 'Tigre']
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': ['Leo', 'Maria', 'João', 'Julia']
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() => _perguntaSelecionada++);
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
                responder: _responder,
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
