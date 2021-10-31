import 'package:flutter/material.dart';
import 'package:pratica3/login.dart';

class ListaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [GestureDetector(
            child: Icon(Icons.add_to_home_screen_rounded),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return LoginScreen();
              }));
            },
          )],
          title: Text("Contatos"),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctxt, index) {
            return ListTile(
              leading: Icon(Icons.person_pin),
              title: Text("Juninho ${index}"),
              subtitle: Text("61-8698-9475"),
              trailing: Icon(Icons.delete),
            );
          },
            ),
        floatingActionButton: FloatingActionButton(
      child: Icon(Icons.phone),
            onPressed: () {
              Navigator.pushNamed(context, '/adicionar');
            },
    ),);
  }
}