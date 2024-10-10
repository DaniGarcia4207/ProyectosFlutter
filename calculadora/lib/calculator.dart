import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {

  const Calculator({super.key});

  @override
  State<Calculator> createState() =>  _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = "0";
  String _expression = "";

  void _buttonPressed(String value) {
    setState(() {
      if (value == "C") {
        _output = "0";
        _expression = "";
      } else if (value == "=") {
        // Aquí puedes implementar la lógica para calcular el resultado
        _output = _expression; // Simulación: mostrar la expresión
        _expression = "";
      } else {
        if (_output == "0") {
          _output = value;
        } else {
          _output += value;
        }
        _expression += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Calculadora'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            alignment: Alignment.centerRight,
            child: Text(
              _expression,
              style:  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            alignment: Alignment.centerRight,
            child: Text(
              _output,
              style:  const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton("1"),
              _buildButton("2"),
              _buildButton("3"),
              _buildButton("+"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton("4"),
              _buildButton("5"),
              _buildButton("6"),
              _buildButton("-"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton("7"),
              _buildButton("8"),
              _buildButton("9"),
              _buildButton("*"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton("C"),
              _buildButton("0"),
              _buildButton("="),
              _buildButton("/"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String value) {
    return ElevatedButton(
      onPressed: () => _buttonPressed(value),
      style: ElevatedButton.styleFrom(
        minimumSize:  const Size(80, 80),
      ),
      child:  Text(value,style:  const TextStyle(fontSize: 24),),
    );
  }
}
