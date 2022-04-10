import 'package:flutter/material.dart';

main() => runApp(ParguntaApp());

class ParguntaApp extends StatelessWidget {
  // const ParguntaApp({Key? key}) : super(key: key);

  final List<String> perguntas = [
    'Qual sua cor favorita?',
    'Qual seu animal de estimação favorito?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            // Esta forma é a anterior ao flutter 2
            // RaisedButton(
            //   child: Text('Resposta 1'),
            //   onPressed: null,
            // ),
            const ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
            const ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: null,
            ),
            const ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
