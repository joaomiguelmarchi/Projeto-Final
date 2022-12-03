import 'dart:io';
import 'package:flutter/material.dart';
import 'package:projeto_final/components/vagas.dart';
import 'package:projeto_final/components/cars.dart';
import 'package:projeto_final/components/records.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _num = "_num";

class ProviderTry extends ChangeNotifier {
  List<Vaga> listateste = [];
  List<Cars> listacars = [];
  List<Records> listrecords = [];
  int index = 0;

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
    listateste.clear();
    for (int i = 0; i <_numberOfLots; i++) {
      listateste.add(Vaga(
        name: "Vaga ${i + 1}",
        isFull: true,)
      );
    }
    notifyListeners();
  }

  removeCar(int index) {
    listacars.removeAt(index);
    notifyListeners();
  }

  aumentar() {
    index++;
    notifyListeners();
  }

  reiniciar() {
    index = 0;
    notifyListeners();
  }

  addCar(
      String owner, String car, File? carPhoto, String startDate, int indexx) {
    listacars.add(Cars(
        ownername: owner,
        carId: car,
        photo: carPhoto,
        start: startDate,
        index: indexx));
    notifyListeners();
  }

  addRegister(String name, plate, startDate, endDate, File photo) {
    listrecords.add(Records(
      name: name,
      plate: plate,
      startDate: startDate,
      endDate: endDate,
      photography: photo,
    ));
    notifyListeners();
  }
}
