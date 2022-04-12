import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() => perguntaSelecionada);
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
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
            Text(perguntas[perguntaSelecionada]),
            // Esta forma é a anterior ao flutter 2
            // RaisedButton(
            //   child: Text('Resposta 1'),
            //   onPressed: null,
            // ),
            ElevatedButton(
              child: const Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 3'),
              onPressed: responder,
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
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
