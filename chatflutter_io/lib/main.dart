import 'package:chatflutter_io/ChatWidgetflutter.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            //title: const Text('Formulario de Salas'),
          ),
          body: const ChatWidgetflutter() // SalaFormulario(),
        ),
      ),
    );
  }
}