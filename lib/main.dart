import 'package:flutter/material.dart';
import 'package:perguntas/questao.dart';
import 'package:perguntas/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
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

  void _responder() {
    if(temPerguntaSelecionada) {
      setState(() => _perguntaSelecionada++);
    }
  }

  bool get temPerguntaSelecionada() {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    Object? respostas = temPerguntaSelecionada ?
    _perguntas[_perguntaSelecionada]['respostas'] : [];

    // for (String textResp
    //     in _perguntas[_perguntaSelecionada]['respostas'].toString()) {
    //   respostas.add(Resposta(textResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: <Widget>[
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            temPerguntaSelecionada ? respostas!
                .map((t) => Resposta(t.toString(), _responder))
                .toList() : null,
          ],
        ) : const Center(
          child: Text(
            'Parabéns!',
            style: TextStyle(fontSize: 28),
          ),
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
