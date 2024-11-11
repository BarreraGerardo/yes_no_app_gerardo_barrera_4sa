//El modelo define que datos debe tener la aplicación.
//Investigar MVC: Modelo= información
//Vista: Lo que vemos, Controlador: Cómo va a funcionar

// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);


import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';

class YesNoModel {
    final String greeting;
    final List<String> instructions;
    final String imagen;
    YesNoModel({
        required this.greeting,
        required this.instructions,
        required this.imagen
    });

    factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
        imagen: json['imagen']
    );

  Message toMessageEntity() => Message(
//Condicional terrario para darle valor a los mensajes
text: greeting == 'yes' ? 'sí'
   :greeting == 'no'
   ? 'no'
   : 'quizas',
//Siempre va a ser de ella
   fromWho: FromWho.hers,
 //Será el gif
 imageUrl: imagen);

   
}
