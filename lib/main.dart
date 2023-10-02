import 'package:flutter/material.dart';
import 'package:widget_formatos/config/router/app_router.dart';
import 'package:widget_formatos/config/theme/app_theme.dart';
//import 'package:widget_formatos/presentation/screens/Home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      //Scaffold(
        //appBar: AppBar(
          //title: const Text('Material App Bar'),
        //),
        //body:  Center(
          //child: FilledButton( //FilledButton: A box.
            //child: const Text( // The box have a son inside. Is a text
              //'Hello'), onPressed: (){},) 
        //),
      //),
    );
  }
}