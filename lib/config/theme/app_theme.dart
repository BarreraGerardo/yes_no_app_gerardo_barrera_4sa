import 'package:flutter/material.dart';

const Color customColor = Color.fromARGB(255, 19, 5, 219);


const List<Color>colorThemes = [
  customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];

class AppTheme {

  ThemeData theme(){ 
    return ThemeData(useMaterial3: true,
    colorSchemeSeed: colorThemes[1],
    //brightness: Brightness.dark
    );
  }

}