import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';

class RecordsScreen extends StatefulWidget {
  const RecordsScreen({Key? key}) : super(key: key);

  @override
  State<RecordsScreen> createState() => _RecordsScreenState();
}

class _RecordsScreenState extends State<RecordsScreen> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Registros'),
        ),
        body: (state.listrecords.isEmpty)
            ?Column(
          children: const [
            Icon(
              Icons.warning_amber,
              size: 200,
            ),
            Text('Nenhum Registro!', style: TextStyle(

            ),)
          ],
        )
            :ListView(
            children: state.listrecords,
          ),
        );
  }
}
