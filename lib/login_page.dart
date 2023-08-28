import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final campoNome = TextEditingController();
  final campoSenha = TextEditingController();

  Widget _body() {
    return Padding(
      padding: EdgeInsets.only(
        top: 200,
        right: 8,
        left: 8,
        bottom: 8,
      ),
      child: ListView(
        children: [ 
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              'Login Page',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30,),
            )),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              'Sign in',
              style: TextStyle(fontSize: 20),
            ),),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: campoNome,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 
                'Nome de usuário',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: campoSenha,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 
                'Senha',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              
            },
            child: Text('Esqueci a senha'),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                print(campoNome.text);
                print(campoSenha.text);
              },
            ),
          ),
          Row(
            children: [
              Text(
                'Não possui cadastro??',
                //style: TextStyle(fontSize: 30),
              ),
              TextButton(
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Teste'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }
}