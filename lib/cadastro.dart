
import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("policia-df.png", height: 190, width: 220),
          Text(
            "Contato Policial",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Nome", border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "E-mail", border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder()),
              obscureText: true,
            ),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.home, size: 18),
            label: Text('CADASTRAR'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              textStyle: TextStyle(fontSize: 14),
            ),
              onPressed: () {
                Navigator.pushNamed(context, '/lista');
              },
          ),
          TextButton(
              child: Text("Entra em uma conta"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 38),
                textStyle: TextStyle(fontSize: 17),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              }),
        ],
      ),
    );
  }
}