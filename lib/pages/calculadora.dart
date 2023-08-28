import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalcPageState();
}

class _CalcPageState extends State<Calculadora> {
  double valor1 = 0.00, valor2 = 0.00, resultado = 0.00;
  final txtCampo1 = TextEditingController(),
      txtCampo2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Operações'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 12,
          left: 12,
          right: 12,
          bottom: 12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Calculadora do Vitas',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: txtCampo1,
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                labelText: 'Valor 1',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide: BorderSide(
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: txtCampo2,
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                labelText: 'Valor 2',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide: BorderSide(
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    valor1 = double.parse(txtCampo1.text);
                    valor2 = double.parse(txtCampo2.text);
                    resultado = valor1 + valor2;
                    setState(() {
                      
                    });
                  },
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    valor1 = double.parse(txtCampo1.text);
                    valor2 = double.parse(txtCampo2.text);
                    resultado = valor1 - valor2;
                    setState(() {
                      
                    });
                  },
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    valor1 = double.parse(txtCampo1.text);
                    valor2 = double.parse(txtCampo2.text);
                    resultado = valor1 * valor2;
                    setState(() {
                      
                    });
                  },
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: () {
                    valor1 = double.parse(txtCampo1.text);
                    valor2 = double.parse(txtCampo2.text);
                    resultado = valor1 / valor2;
                    setState(() {
                      
                    });
                  },
                  child: Text('/'),
                ),
                ElevatedButton(
                  onPressed: () {
                    txtCampo1.text = '';
                    txtCampo2.text = '';
                    setState(() {
                      
                    });
                  },
                  child: Text('CE'),
                ),
              ],
            ),
            Text(
              "Resultado: ${resultado.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
