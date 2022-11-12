import 'package:flutter/material.dart';
import 'package:projeto_final/data/inherited_try.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key, required BuildContext? inheritedTry})
      : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context1) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('N° de Vagas'),
      ),
       body: ListView(
         padding: EdgeInsets.all(8),
         children: InheritedTry.of(context).vagasList,
          ),
       );
  }
}
