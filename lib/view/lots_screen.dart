import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';

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
            'Vagas: ${state.numberofcars} /'
            ' ${state.listoflots.length}',
            style: const TextStyle(
              fontSize: 50,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
