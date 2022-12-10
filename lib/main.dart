import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:projeto_final/controller/locale_provider.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/l10n/L10n.dart';
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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ProviderTry(),
          ),
          ChangeNotifierProvider(
            create: (context) => LocaleProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: L10n.all,
          home: const MyApp(),
        )),
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
     final provider = Provider.of<LocaleProvider>(context);

    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
      locale: provider.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: state.changeTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialScreen(),
        'screen1': (context) => const ScreenOne(),
        'screen1.1': (context) => const ScreenOneEOne(),
        'screen2': (context) => const ScreenTwo(),
        'enterscreen': (context) => const EnterScreen(),
        'carsscreen': (context) => const CarsScreen(),
        'vagasrest': (context) => const LotsScreen(),
        'recordsscreen': (context) => const RecordsScreen(),
        'settings': (context) => const Settings(),
      },
    );
  }
}
