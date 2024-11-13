import 'package:dio/dio.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/domain/entities/message.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/infrastructure/models/yes_no_model.dart';

class GetYesNoanswer { 

  final _dio = Dio();
  Future<Message> getAnswer() async { 
    //almacen la peticion get en una variable
    final response = await _dio.get('https://yesno.wtf/api');

    final yesnomodel = YesNoModel.fromJsonMap(response.data);

    return yesnomodel.toMessageEntitie();

   }
 }