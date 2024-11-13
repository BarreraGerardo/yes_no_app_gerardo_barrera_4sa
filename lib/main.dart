import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/config/theme/app_theme.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/presentation/providers/chat_provider.dart';
import 'package:yes_no_app_gerardo_barrera_4sa/presentation/providers/screens/chat/chat_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {  

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        // es un bulid context y lo que hace es que da los cambios del chat provider
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes or No App',
        theme: AppTheme().theme(),
        home: const ChatScreen()
      ),
    );
  }


}