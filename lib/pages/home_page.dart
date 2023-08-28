import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.asset('assets/images/sonic.jpeg')),
              accountName: Text("Gustavo dos Santos Vitali Macedo"),
              accountEmail: Text("cl202002@g.unicamp.br"),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculadora'),
              subtitle: Text('Exercício 1'),
              onTap: () {
                Navigator.of(context).pushNamed('/caculadora');
              },
            ),
            ListTile(
              leading: Icon(Icons.app_registration_outlined),
              title: Text('Resistro'),
              subtitle: Text('Exercício 2'),
              onTap: () {
                Navigator.of(context).pushNamed('/cadastro');
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Tela de Login'),
              subtitle: Text('Exercício 3'),
              onTap: () {
                Navigator.of(context).pushNamed('/login');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Salve Tânia'),
        centerTitle: true,
      ),
      body: Center(
          child: Text('O Exedídio 3 ainda não está pronto prof'),
        ),
    );
  }

}