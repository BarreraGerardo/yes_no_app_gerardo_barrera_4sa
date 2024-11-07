import 'package:flutter/material.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola amor', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.me)
  ];

  final ScrollController chatScrollController = ScrollController();

    //Instancia de la clase GetYesNoAnswer
    final getYesNoAnswer = GetYesNoAnswer();
  Future<void> sendMessage(String text) async {
    // Evita enviar mensajes vacíos (Ejercicio 1)
    if (text.trim().isEmpty) return;

    // Añade el mensaje a la lista
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      herReply();
    }
    notifyListeners();

    // Imprime la cantidad de mensajes en la consola (Ejercicio 2)
    print("Cantidad de mensajes: ${messageList.length}");

    // Mueve el scroll al fondo para mostrar el mensaje recién añadido
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    if (chatScrollController.hasClients) {
      await Future.delayed(const Duration(seconds: 1));
      chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }
  
  Future<void> herReply() async {
    //Obtener el mensaje de la petición
    final herMessage = await getYesNoAnswer.getAnswer();
    //Añadir el mensaje de mi crush a la lista
    messageList.add(herMessage);
    //Notifica si algo de provider cambió para el estado
    notifyListeners();
    //Mueve el scroll hasta el ultimo mensaje recibido
    moveScrollToBottom();
      }
}