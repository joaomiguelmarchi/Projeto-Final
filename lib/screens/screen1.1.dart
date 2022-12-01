import 'package:flutter/material.dart';
import 'package:projeto_final/data/provider_try.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOneEOne extends StatefulWidget {
  const ScreenOneEOne({Key? key}) : super(key: key);

  @override
  State<ScreenOneEOne> createState() => _ScreenOneEOneState();
}

class _ScreenOneEOneState extends State<ScreenOneEOne> {
  TextEditingController numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context,) {
    Provider.of<ProviderTry>(context, listen: false);
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('TELA'),
        ),
        body: Center(
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
                  validator: (value) {
                    if (value!.isEmpty ||
                        int.parse(value) > 30 ||
                        int.parse(value) < 1) {
                      return 'No maximo 30 vagas';
                    }
                    return null;
                  },
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
                      setState((){
                        if(_formKey.currentState!.validate()){
                          Provider.of<ProviderTry>(
                              context, listen: false).changeNumberOfLots(
                              numberController.text);
                          Navigator.pop(context);
                        }
                      });
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
      ),
    );
  }
}

class NumberOfLotsState extends ChangeNotifier {
  NumberOfLotsState() {
    _init();
  }

  int _numberOfLots = 0;
  int get numberOfLots => _numberOfLots;

  Future<void> _init() async {
    final prefs = await SharedPreferences.getInstance();
    _numberOfLots = prefs.getInt('number') ?? 0;
    notifyListeners();
  }

  Future<void> changeNumberOfLots(controller) async {
    final prefs = await SharedPreferences.getInstance();
    final text = controller.toString();
    final number = int.parse(text);
    _numberOfLots = number;
    await prefs.setInt('number', _numberOfLots);
    notifyListeners();
  }


}
