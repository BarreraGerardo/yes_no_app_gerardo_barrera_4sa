import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  //Emite el valor cambiado
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});
  
  // ignore: recursive_getters
  String get message => message;

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();
    // ignore: non_constant_identifier_names
    final OutlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40));

      final inputDecoration = InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder:OutlineInputBorder,
        focusedBorder: OutlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            //Notifica que el texto que escribo ya cambió
            onValue(textValue);
            textController.clear();
          }
        ),
      );
    
    return TextFormField(
      onTapOutside:(event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value){
        // ignore: avoid_print
        print('Submit value $value');
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
        Container(
  padding: const EdgeInsets.all(5.0), // Espacio de 5 píxeles en todos los lados
  decoration: BoxDecoration(
    color: Colors.transparent, 
    borderRadius: BorderRadius.circular(8.0), 
  ),
  child: Text(message),
);
      },
    );
  }
}