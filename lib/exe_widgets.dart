import 'package:exercicio_calc/pages/login_page.dart';
import 'package:exercicio_calc/pages/cadastro_produtos.dart';
import 'package:exercicio_calc/pages/calculadora.dart';
import 'package:exercicio_calc/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/caculadora': (context) => Calculadora(),
        '/login': (context) => LoginPage(),
        '/cadastro': (context) => Cadastro(),
      },
    );
  }
  
}