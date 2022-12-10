import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LotsScreen extends StatefulWidget {
  const LotsScreen({Key? key}) : super(key: key);

  @override
  State<LotsScreen> createState() => _LotsScreenState();
}

class _LotsScreenState extends State<LotsScreen> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Center(
          child: Text(
            '${AppLocalizations.of(context)!.lots_screen_text}: ${state.numberofcars} /'
            ' ${state.listoflots.length}',
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
