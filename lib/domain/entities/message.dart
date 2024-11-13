enum FromWho { me, hers, zendaya }

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;
  final DateTime timestamp; // Agregar timestamp

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
    DateTime? timestamp, required bool isRead, // Permitir timestamp nulo para inicializar con DateTime.now()
  }) : timestamp = timestamp ?? DateTime.now();

  bool isRead = false;

  // Método para obtener la hora formateada en hh:mm
  String get timeSent => "${timestamp.hour}:${timestamp.minute.toString().padLeft(2, '0')}";
}