import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _exibirSnackbar(context);
          },
          child: Text('Clique aqui',
            style: TextStyle(
              fontSize: 20, 
              color: Colors.white, 
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, 
            fixedSize: Size(200, 60),
          ),
        ),
      ),
    );
  }

  void _exibirSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: Text('Olá, Next Tecnologia'),
      duration: Duration(seconds: 5),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}

