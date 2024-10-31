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
            backgroundImage: NetworkImage('https://cdn04.cdn.justjared.com/wp-content/uploads/2014/04/thorne-mtvmovie/thumbs/bella-thorne-zendaya-mtv-movie-awards-2014-07.jpg'),
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