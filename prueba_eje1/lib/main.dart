import 'package:flutter/material.dart';
import 'package:prueba_eje1/view/resultado_view.dart';
import 'package:prueba_eje1/view/pagina_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sueldo Calcular',
      initialRoute: '/',
      routes: {
        '/': (context) => PaginaView(),
        '/resultado': (context) => ResultadoView(),
      },

      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
      ),
    );
  }
}