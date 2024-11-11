import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/presentation/providers/chat_provider.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/presentation/providers/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/presentation/providers/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/presentation/providers/widgets/chat/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.pinimg.com/originals/d4/b0/ca/d4b0cae4b50c297f813b0664069013d3.jpg',
            ),
          ),
        ),
        title: const Text('Mi amor'),
        centerTitle: false,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.me)
                      ? MyMessageBubble(message: message)
                      : HerMessageBubble(message: message,);
                },
              ),
            ),
            // Caja de texto para enviar mensajes
            MessageFieldBox(onValue: chatProvider.sendMessage),
          ],
        ),
      ),
    );
  }
}