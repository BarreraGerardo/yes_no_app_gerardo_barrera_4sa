import 'package:flutter/material.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/presentation/providers/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/presentation/providers/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/presentation/providers/widgets/chat/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pinimg.com/originals/d4/b0/ca/d4b0cae4b50c297f813b0664069013d3.jpg'),
          ),
        ),
        title: const Text('Mi amor'),
        centerTitle: false,
      ),
      body: _Chatview(),
    );
  }
}

class _Chatview extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                return (index % 2 == 0)
                ? const HerMessageBubble()
                :const MyMessageBubble();
                })),

                /// Caja de texto de mensajes
                const MessageFieldBox(),
          ]
        ),
      ),
    );
  }
}