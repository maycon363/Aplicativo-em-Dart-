
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdicionarScreen extends StatefulWidget {
  @override
  State<AdicionarScreen> createState() => _AdicionarScreenState();
}

class _AdicionarScreenState extends State<AdicionarScreen> {
  String  _texto = 'Salvar';
  String  _nome = '';
  String  _telefone = '';

  void pressionaEntrar() {
    print("${_nome} : ${_telefone} ");
  }

  void MantemPressionado() {
    setState(() => _texto = 'Pressionou');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Contato"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: TextField(
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              onChanged: (text) => setState(() => _nome = text),
              decoration: InputDecoration(
                  labelText: "Nome", border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: TextField(
              keyboardType: TextInputType.phone,
              onChanged: (text) => setState(() => _telefone = text),
              decoration: InputDecoration(
                  labelText: "Telefone", border: OutlineInputBorder()),
            ),
          ),
          TextButton(
            child: Text(_texto),
            onPressed: pressionaEntrar,
              onLongPress: MantemPressionado,
          ),
        ],
      ),
    );
  }
}