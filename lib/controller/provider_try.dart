import 'dart:io';
import 'package:flutter/material.dart';
import 'package:projeto_final/model/lots.dart';
import 'package:projeto_final/model/cars.dart';
import 'package:projeto_final/model/records.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _num = "_num";

var darkTheme = ThemeData(
  primarySwatch: Colors.teal,
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

var lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

class ProviderTry extends ChangeNotifier {
  List<Lots> listoflots = [];
  List<Cars> listacars = [];
  List<Records> listrecords = [];
  int numberofcars = 0;
  var themevar;
  bool theme = true;
  File? image;
  ProviderTry() {
    init();
  }

  int _numberOfLots = 0;

  int get numberOfLots => _numberOfLots;

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _numberOfLots = prefs.getInt(_num) ?? 0;
    print('getttt ${prefs.getInt(_num)}');
    notifyListeners();
  }

  Future<void> changeNumberOfLots(controller) async {
    final prefs = await SharedPreferences.getInstance();
    final number = int.parse(controller);

    print('SETTTTT $number');
    _numberOfLots = number;
    await prefs.setInt(_num, number);
    notifyListeners();
  }

  buildList() {
    listoflots.clear();
    for (int i = 0; i < _numberOfLots; i++) {
      listoflots.add(Lots(
        name: "Vaga ${i + 1}"
      ));
    }
    notifyListeners();
  }
  getl(int i){
    numberofcars = i;
  }

  addRegister(String name, plate, start) {
  listrecords.add(Records(name: name, plate: plate, startDate: start,));
    notifyListeners();
  }

  changeTheme(bool b){
    theme = b;
    print(theme);
    notifyListeners();
  }
  getTheme(){

    if (theme==true){
      themevar = lightTheme;
    }else{
      themevar= darkTheme;
    }
    return themevar;
  }

}
