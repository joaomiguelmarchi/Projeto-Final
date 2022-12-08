import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/view/cars_screen.dart';
import 'package:projeto_final/view/enter_screen.dart';
import 'package:projeto_final/view/initial_screen.dart';
import 'package:projeto_final/view/records_screen.dart';
import 'package:projeto_final/view/screen1.1.dart';
import 'package:projeto_final/view/screen1.dart';
import 'package:projeto_final/view/screen2.dart';
import 'package:projeto_final/view/settings_screen.dart';
import 'package:provider/provider.dart';
import 'package:projeto_final/view/lots_screen.dart';

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
    final state = Provider.of<ProviderTry>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: state.getTheme(),
     initialRoute: '/',
     routes: {
        '/' : (context) => const InitialScreen(),
        'screen1' : (context) => const ScreenOne(),
       'screen1.1' : (context) => const ScreenOneEOne(),
       'screen2' : (context) => const ScreenTwo(),
       'enterscreen' : (context) => const EnterScreen(),
        'carsscreen' : (context) => const CarsScreen(),
       'vagasrest' : (context) => const  LotsScreen(),
       'recordsscreen' : (context) => const  RecordsScreen(),
       'settings' : (context) => const  Settings(),
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
