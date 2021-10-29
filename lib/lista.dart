import 'package:flutter/material.dart';

class ListaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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