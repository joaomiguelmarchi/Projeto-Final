import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    String? txtTheme = 'a';
    final state = Provider.of<ProviderTry>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (state.theme)?
              SizedBox(
                height: 100,
                width: 230,
                child: ElevatedButton(
                    onPressed: () {
                      bool theme;
                      if(state.theme == true){
                        theme = false;
                      }else{
                        theme = true;
                      }
                      state.changeTheme(theme);
                    },
                    child: Column(
                        children:const [
                          Text('Mudar para o tema', style: TextStyle(fontSize: 23),),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.light_mode, size: 50,),
                          ),
                        ]
                    )
                ),
              )
              : SizedBox(
                height: 100,
                width: 230,
                child: ElevatedButton(
                    onPressed: () {
                      bool theme;
                      if(state.theme == true){
                        theme = false;
                      }else{
                        theme = true;
                      }
                      state.changeTheme(theme);
                    },
                    child: Column(
                        children:const [
                          Text('Mudar para o tema', style: TextStyle(fontSize: 23),),
                          Icon(Icons.dark_mode, size: 50,),
                        ]
                    )
                ),
              )
            ],
          ),
        ),
      );
  }
}
