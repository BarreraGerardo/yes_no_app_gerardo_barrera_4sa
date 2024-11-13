import 'package:flutter/material.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;

  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message.timeSent, // Muestra la hora formateada
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(width: 5),
            Icon(
              Icons.done_all,
              color: message.isRead ? Colors.blue : Colors.blue, // Palomitas azules si está leído
              size: 16,
            ),
          ],
        ),
      ],
    );
  }
}