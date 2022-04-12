import 'package:flutter/material.dart';
import 'package:perguntas/questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() => _perguntaSelecionada);
    _perguntaSelecionada++;
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> _perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal de estimação favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(_perguntas[_perguntaSelecionada]),
            // Esta forma é a anterior ao flutter 2
            // RaisedButton(
            //   child: Text('Resposta 1'),
            //   onPressed: null,
            // ),
            ElevatedButton(
              child: const Text('Resposta 1'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 2'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 3'),
              onPressed: _responder,
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  // const ParguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
