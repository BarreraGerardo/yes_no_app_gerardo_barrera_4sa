import 'package:flutter/material.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messageList= [
   Message(text: 'Hola Ader', fromWho: FromWho.me),
   Message(text: '¿Lloras por que reprobaste tópicos?', fromWho: FromWho.me)
  ];
  //controlador para manejar la posición del scroll
  final ScrollController chatScrollController = ScrollController();
  //Enviar un mensaje
  Future<void> sendMessage(String text) async{
    //El mensaje siempre va a ser "me" por que yo lo envío
    final newMessage= Message(text: text, fromWho: FromWho.me);
    //Agrega un elemento a lista "messageList"
    messageList.add(newMessage);
//Notifica si algo de provider cambió para que se guarde en el estado
    notifyListeners();
    moveScrollToBottom();
  }
    //Mover el scroll al último mensaje

    Future<void> moveScrollToBottom()async{
      //Un pequeño atraso en la animación para garantizar que siempre 
      //se verá aún cuando se envíe mensajes cortos y rápidos
      await Future.delayed(const Duration(seconds:1));
      //Offset: posición de la animación
      //maxScrollExtent determina a lo máximo que el scroll puede dar
      chatScrollController.animateTo(chatScrollController.position.maxScrollExtent, 
      //Duración de la animación
      duration: const Duration(milliseconds:300), 
      //"Rebote" al final de la animación
      curve: Curves.easeOut);
    }
  
}