import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'cadastro.dart';
import 'lista.dart';
import 'adicionar.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  //Widget_Sem_Estado
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Widget_Layout
      title: 'Widgets Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue),
      routes: {
        '/': (context) => LoginScreen(),
        '/cadastro': (context) => CadastroScreen(),
        '/lista': (context) => ListaScreen(),
        '/adicionar': (context) => AdicionarScreen(),
      }
    );
  }
}
