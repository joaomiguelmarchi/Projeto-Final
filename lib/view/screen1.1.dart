import 'package:flutter/material.dart';
import 'package:projeto_final/controller/locale_provider.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/l10n/L10n.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScreenOneEOne extends StatefulWidget {
  const ScreenOneEOne({Key? key}) : super(key: key);

  @override
  State<ScreenOneEOne> createState() => _ScreenOneEOneState();
}

class _ScreenOneEOneState extends State<ScreenOneEOne> {
  TextEditingController numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String txten='There are more vehicles than Lots, please retype the number!';
  String txtpt= 'Existem mais carros que vagas, por favor digite outro número!';
  late String txt;
  @override

  Widget build(
    BuildContext context,
  ) {
    final state = Provider.of<ProviderTry>(context);
    final provider = Provider.of<LocaleProvider>(context);
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 200,
                  width: 390,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.screen1n1_title,
                      style: const TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                      ),
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
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: AppLocalizations.of(context)!.screen1n1_type,
                      fillColor: Colors.white10,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  width: 100,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (state.numberofcars >
                            int.parse(numberController.text)) {
                          if(provider.locale == L10n.all.first){
                            txt=txten;
                          }else{
                            txt=txtpt;
                          }
                          createAlertDialog(context, txt);
                        } else {
                          state.changeNumberOfLots(numberController.text);
                          Navigator.popUntil(context, (route) => route.isFirst);
                        }
                        state.buildList(AppLocalizations.of(context)!.lots_list);
                      }
                    },
                    child: Text(
                      AppLocalizations.of(context)!.screen1n1_btn,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  createAlertDialog(BuildContext context, String txt) {


    return showDialog(
        context: context,
        builder: (context) {
          return  AlertDialog(
            title: Text(
                txt),
            actions: <Widget>[
              Center(
                child: ElevatedButton(
                  onPressed: (){
                      Navigator.pop(context);
                  },
                  child:  const Text('OK'),
                ),
              ),
            ]
          );
        });
  }
}
