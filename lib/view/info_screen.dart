import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.initial_screen_btn5),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 3,
                color: Colors.black,
              ),
            ),
            child: Center(
              child: Text(
                '${AppLocalizations.of(context)!.info_screen_text} ${state.numberofcars} /'
                ' ${state.listoflots.length}',
                style: const TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 100,
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 3,
                color: Colors.black,
              ),
            ),
            child: Center(
              child: Text(
                '${AppLocalizations.of(context)!.info_screen_text2}${state.earn}',
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
