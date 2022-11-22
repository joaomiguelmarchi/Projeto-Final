
import 'package:flutter/material.dart';
import 'package:projeto_final/components/vagas.dart';
import 'package:shared_preferences/shared_preferences.dart';


const _num = "_num";
class ProviderTry extends ChangeNotifier{

  ProviderTry(){
    SharedPreferences.getInstance().then((value){
      _sharedPreferences = value;
      reload();
    });
  }

  SharedPreferences? _sharedPreferences;

  int _numero =0;

  int get numeros => _numero;

  void reload(){
    _numero = _sharedPreferences?.getInt(_num)?? 0;
    notifyListeners();
  }

  void save(){
    print("SAVE VALUE $_num");
    _sharedPreferences?.setInt(_num, _numero);
  }

  void receber(int i){
    teste = i;
    notifyListeners();
  }
  int teste =0;

  List<Vaga> listateste = [];

  void createlist(){
    for (int i=0;i<teste;i++){
      listateste.add(Vaga(name: "Vaga ${i+1}",isFull: false,));
    }
    notifyListeners();
  }
}