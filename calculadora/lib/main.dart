import 'package:flutter/material.dart';
//import 'package:calculadora/calculator.dart';
import 'package:calculadora/presentacion/pantallas/chat/chat_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     useMaterial3: true,
    //     colorSchemeSeed: Colors.blue
    //   ),
    //    home: const Calculator(),
    // );     

    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
       home: const ChatPantalla(),
    );     
 }
}