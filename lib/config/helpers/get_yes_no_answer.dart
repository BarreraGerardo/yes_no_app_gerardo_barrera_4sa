import 'package:dio/dio.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {

  //Se crea objeto de la clase Dio
  //Para manejar las peticiones HTTP
  final _dio = Dio();

  //Obtener la respuesta
  Future <Message> getAnswer() async {
    //Almacenar la peticion Get en una variable
    // ignore: unused_local_variable
    final response = await _dio.get('https://yesno.wtf/api');
//Almacenar la data de la respuesta en una variable
final yesNoModel = YesNoModel.fromJsonMap(response.data);
//Devolver la instancia de "Message" creada en el modelo
return yesNoModel.toMessageEntity();
  } 
}