import 'package:flutter/material.dart';
import 'package:act_7/inicial.dart';
import 'package:act_7/ejercicio1.dart';
import 'package:act_7/ejercicio2.dart';
import 'package:act_7/ejercicio3.dart';
import 'package:act_7/ejercicio4.dart';
import 'package:act_7/ejercicio5.dart';
import 'package:act_7/ejercicio6.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const inicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const Ejercicio1(),
        '/pantalla3': (context) => const Ejercicio2(),
        '/pantalla4': (context) => const Ejercicio3(),
        '/pantalla5': (context) => const Ejercicio4(),
        '/pantalla6': (context) => const Ejercicio5(),
        '/pantalla7': (context) => const Ejercicio6(),
      },
    );
  }
}
