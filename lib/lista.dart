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
              leading: Icon(Icons.person),
              title: Text("nome ${index}"),
              subtitle: Text("66-9999-9999"),
              trailing: Icon(Icons.delete),
            );
          },
            ),
        floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){},
    ),);
  }
}