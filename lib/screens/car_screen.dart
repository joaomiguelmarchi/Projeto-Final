import 'package:flutter/material.dart';
import 'package:projeto_final/data/provider_try.dart';
import 'package:provider/provider.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Titulo'),),
      body: ListView(
      children :Provider.of<ProviderTry>(context, listen: false).listacars
    )
    );
  }
}
