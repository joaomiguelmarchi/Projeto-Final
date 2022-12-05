import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';

class VagasRestantesScreen extends StatelessWidget {
  const VagasRestantesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Center(
          child: Container(
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
            child: Center(
              child: Text(
                'Vagas: ${Provider.of<ProviderTry>(context, listen: false).listacars.length} /'
                ' ${Provider.of<ProviderTry>(context, listen: false).listateste.length}',
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
