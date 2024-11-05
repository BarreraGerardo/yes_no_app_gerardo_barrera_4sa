import 'package:flutter/material.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;
  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5), // Espacio de 5 píxeles alrededor
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10), // Ajustar padding interno para más compactación si es necesario
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 5), // Espacio reducido después de la burbuja
        ],
      ),
    );
  }
}