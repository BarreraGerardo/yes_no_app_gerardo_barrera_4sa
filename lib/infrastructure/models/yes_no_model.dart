//El modelo define que datos debe tener la aplicación.
//Investigar MVC: Modelo= información
//Vista: Lo que vemos, Controlador: Cómo va a funcionar

class YesNoModel {
  //Atributos de clase
  final String answer;
  final bool forced;
 final String image;

  YesNoModel({required this.answer, required this.forced, required this.image});
}