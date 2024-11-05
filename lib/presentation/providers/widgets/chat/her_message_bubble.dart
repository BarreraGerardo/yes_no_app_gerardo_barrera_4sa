import 'package:flutter/material.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key, required Message message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5), // Espaciado de 5 píxeles alrededor
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10), // Ajustar padding interno si deseas más compactación
              child: Text(
                'Hola mundo',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 5), // Espacio reducido entre texto y burbuja de imagen
          _ImageBubble(),
          const SizedBox(height: 5), // Espacio reducido entre burbuja de imagen y siguiente contenido
        ],
      ),
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/9-dc99c0e3c066b28d3a12262692cd5432.gif",
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Mi amor está enviando una imagen'),
          );
        },
      ),
    );
  }
}