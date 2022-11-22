import 'package:flutter/material.dart';
import 'package:projeto_final/data/provider_try.dart';
import 'package:projeto_final/screens/enter_screen.dart';
import 'package:projeto_final/screens/initial_screen.dart';
import 'package:projeto_final/screens/screen1.1.dart';
import 'package:projeto_final/screens/screen1.dart';
import 'package:projeto_final/screens/screen2.dart';
import 'package:projeto_final/screens/screen3.1.dart';
import 'package:projeto_final/screens/screen3.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
          create: (context) => ProviderTry(),
          child: const MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
     initialRoute: '/',
     routes: {
        '/' : (context) => InitialScreen(),
        'screen1' : (context) => ScreenOne(),
       'screen1.1' : (context) => ScreenOneEOne(),
       'screen2' : (context) => ScreenTwo(),
       'enterscreen' : (context) => EnterScreen(),
       'screen3' : (context) => ScreenThree(),
       'screen3.1' : (context) => ScreenThreeEOne(),
     },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const InitialScreen();
  }
}
