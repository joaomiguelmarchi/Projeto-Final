import 'dart:io';
import 'package:flutter/material.dart';
import 'package:projeto_final/model/lots.dart';
import 'package:projeto_final/model/cars.dart';
import 'package:projeto_final/model/records.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _num = "_num";
const _theme = "_theme";

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
  double earn = 0;

  ProviderTry() {
    init();
    getTheme();
  }

  int _numberOfLots = 0;

  int get numberOfLots => _numberOfLots;

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _numberOfLots = prefs.getInt(_num) ?? 0;
    notifyListeners();
  }

  Future<void> changeNumberOfLots(controller) async {
    final prefs = await SharedPreferences.getInstance();
    final number = int.parse(controller);
    _numberOfLots = number;
    await prefs.setInt(_num, number);
    notifyListeners();
  }

  Future<void> setTheme(bool b) async {
    print(theme);
    theme = b;
    print(theme);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_theme, theme);
    notifyListeners();
  }

  Future<void> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    theme = await prefs.getBool(_theme) ?? true;
    notifyListeners();
  }

  buildList(String a) {
    listoflots.clear();
    for (int i = 0; i < _numberOfLots; i++) {
      listoflots.add(Lots(name: "$a ${i + 1}"));
    }
    notifyListeners();
  }

  getl(int i) {
    numberofcars = i;
  }

  addRegister(String name, plate, DateTime start, end) {
    listrecords.add(Records(
      name: name,
      plate: plate,
      startDate: start,
      endDate: end,
    ));
    notifyListeners();
  }

  getPrice(int i) {
    print(i);
    if (i >= -59) {
      print('menos de uma hora');
      return 4.00;
    } else if (i >= -239 && i <= -60) {
      print('entre uma e 4 horas');
      return 3.75;
    } else if (i >= -479 && i <= -240) {
      print('entre 4 e 8 horas');
      return 3.50;
    } else if (i <= 480) {
      print('mais de 8');
      return 8.00;
    }
    notifyListeners();
  }
  getEarn(double d){
    earn = earn + d;
    notifyListeners();
  }

  changeTheme() {
    if (theme == true) {
      themevar = lightTheme;
    } else {
      themevar = darkTheme;
    }
    return themevar;
  }
}
