import 'package:flutter/material.dart';
import 'package:projeto_final/data/provider_try.dart';
import 'package:provider/provider.dart';

class ScreenOneEOne extends StatefulWidget {
  const ScreenOneEOne({Key? key}) : super(key: key);

  @override
  State<ScreenOneEOne> createState() => _ScreenOneEOneState();
}

class _ScreenOneEOneState extends State<ScreenOneEOne> {
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context,) {
    Provider.of<ProviderTry>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TELA'),
      ),
      body: Center(
        child: Container(
          height: 750,
          width: 375,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
              border: Border.all(
              color: Colors.black,
              width: 3,
              ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 100,
                width: 290,
                child: Text('Digite um Numero',
                  style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: numberController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Numero de Vagas',
                    fillColor:  Colors.white10,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                width: 80,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                       Provider.of<ProviderTry>(context, listen: false).receber(int.parse(numberController.text));
                       Provider.of<ProviderTry>(context, listen: false).createlist();
                     //  Provider.of<ProviderTry>(context, listen: false).save();
                        Navigator.popAndPushNamed(context, 'Screen');
                  } ,
                  child: const Text(
                    'SAVE'
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
