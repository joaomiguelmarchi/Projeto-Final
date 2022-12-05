import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/view/list_screen.dart';
import 'package:provider/provider.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context1) {
    final state = Provider.of<ProviderTry>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('N° de Vagas'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.cyan,
              Colors.yellow,
            ],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: const [
            ListScreen(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, 'screen1.1');
      },
      child: const Icon(Icons.change_circle),),
    );
  }
}
