import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String nomeButton;
  final void Function() onPressed;

  Resposta(this.nomeButton, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(right: 16, left: 16),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(nomeButton),
        onPressed: onPressed,
      )
    );
  }
}
