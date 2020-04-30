import 'package:flutter/material.dart';



class Resposta extends StatelessWidget {

  final String resposta;
  final void Function() onSelecionado;

   Resposta(this.resposta, this.onSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
                textColor: Colors.white,
                color: Colors.teal[700],
                child: Text(resposta),
                onPressed: onSelecionado,
              ),
    ); 
      
  }
}