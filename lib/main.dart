import 'package:flutter/material.dart';
import 'package:perguntas/questao.dart';
import 'package:perguntas/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() => _perguntaSelecionada);
    _perguntaSelecionada++;
  }

  @override
  Widget build(BuildContext context) {
    final _perguntas = [
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Preto', 'Cinza', 'Vermelho', 'Branco']
      },
      {
        'text': 'Qual seu animal de estimação favorito?',
        'respostas': ['Lobo', 'Gavião', 'Leão', 'Tigre']
      },
      {
        'text': 'Qual seu instrutor favorito?',
        'respostas': ['Leo', 'Maria', 'João', 'Julia']
      }
    ];

    List<Widget> respostas = [];

    for (String textResp
        in _perguntas[_perguntaSelecionada]['respostas'].toString()) {
      respostas.add(Resposta(textResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas,
          ],
        ),
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
