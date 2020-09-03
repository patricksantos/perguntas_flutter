import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() restart;

  Resultado(this.pontuacao, this.restart);

  String get fraseResultado {
    if (pontuacao < 8) return 'Parabéns!';
    else if (pontuacao < 12) return 'Você é bom!';
    else if (pontuacao < 16) return 'Impressionante!';
    else return 'Nível Jedi!!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              fraseResultado,
              style: TextStyle(fontSize: 28)
          ),
          FlatButton(
              child: const Text('Reiniciar?', style: TextStyle(fontSize: 18),),
              onPressed: restart,
              textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
