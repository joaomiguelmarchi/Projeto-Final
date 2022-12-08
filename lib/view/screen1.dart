import 'package:flutter/material.dart';
import 'package:projeto_final/view/list_screen.dart';

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
        title: const Text('N° de Vagas'),
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
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
