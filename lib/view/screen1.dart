import 'package:flutter/material.dart';
import 'package:projeto_final/view/list_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context1) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.screen1_title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          ListScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'screen1.1');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
