import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  // Método para crear una instancia desde JSON
  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  // Método para convertir la instancia en un objeto JSON
  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  // Método para convertir la instancia en un objeto Message
  Message toMessageEntitie() => Message(
        text: answer == 'yes' ? 'Si' : answer == 'no' ? 'No' : 'Quizá',
        fromWho: FromWho.zendaya,
        imageUrl: image,
        timestamp: DateTime.now(), // Agrega la hora actual
        isRead: false, // Por defecto, el mensaje no ha sido leído
      );
}
