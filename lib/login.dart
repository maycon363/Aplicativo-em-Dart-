import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/policia-Image.jpeg", height: 180, width: 220),
          Text(
            "Contato Policial",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
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
                  labelText: "Senha", border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
            child: Text('ENTRAR'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              textStyle: TextStyle(fontSize: 14),
            ),
            onPressed: () {},
          ),
          TextButton(
              child: Text("Cadastrar-se aqui!!"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 38),
                textStyle: TextStyle(fontSize: 17),
              ),
              onPressed: (){}),
        ],
      ),
    );
  }
}
