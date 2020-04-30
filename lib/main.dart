import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_perguntas/questao.dart';
import './resposta.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas teste'),
        ), //AppBar
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            
            Resposta('Resposta 01', _responder),
            Resposta('Resposta 02', _responder),
            Resposta('Resposta 03', _responder),
            
          ], 
        ), 
      ), 
    ); 
  }
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();

  }
}
