import 'package:flutter/material.dart';
import 'package:projeto_final/components/vagas.dart';
import 'package:projeto_final/screens/empty_screen.dart';
import 'package:projeto_final/data/provider_try.dart';
import 'package:projeto_final/screens/list_screen.dart';
import 'package:provider/provider.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key})
      : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override

  Widget build(BuildContext context1) {
    List<Vaga> a = (context.watch<ProviderTry>().listateste);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('N° de Vagas'),
      ),
       body: ListView(
         padding: const EdgeInsets.all(8),
            children:[
             (a.isEmpty)?
              const EmptyScreen()
             : const ListScreen(),
           ],
       ),
    );
  }
}
