import 'package:flutter/material.dart';
import 'package:calculadora/presentacion/widgets/compartido/caja_de_texto.dart';
import 'package:calculadora/presentacion/widgets/chat/mi_mensaje_burbuja.dart';
import 'package:calculadora/presentacion/widgets/chat/su_mensaje_burbuja.dart';

class ChatPantalla extends StatelessWidget{
 const ChatPantalla({super.key});
 @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: 
            NetworkImage('https://encrypted-tbn1.gstatic.com/images.com/images?q=tbn:ANd9GcSbxmzvX60Xz0zJGdFfc_OiP_djcpzUkJ7GKQBc35uUfh-bYxjb'),
          ),
        ),
      ),
    );
  }
}

class _ChatView extends StatelessWidget{
  @override
   Widget build(BuildContext context){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
             itemCount:100,
             itemBuilder:(context, index){
              return (index % 2 == 0)
              ? const SuMensajeBurbuja()
              : const MiMensajeBurbuja();
             })),
             const CajadeTexto(),
          ],
        ),
      ),
    );
   }
}