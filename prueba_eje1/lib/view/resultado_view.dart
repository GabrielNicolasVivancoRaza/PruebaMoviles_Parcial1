import 'package:flutter/material.dart';

class ResultadoView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final resultado = ModalRoute.of(context)!.settings.arguments as String; //linea de ley manejar para lo del otro lado

    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
      ),
      body: Center(
          child: Text(resultado,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          )
      ),
    );

  }

}