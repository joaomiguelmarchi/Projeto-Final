import 'dart:io';
import 'package:flutter/material.dart';
import 'package:projeto_final/components/vagas.dart';
import 'package:projeto_final/components/cars.dart';
import 'package:projeto_final/components/records.dart';
import 'package:shared_preferences/shared_preferences.dart';


const _num = "_num";
class ProviderTry extends ChangeNotifier{
    List<Vaga> listateste = [];
    List<Cars> listacars = [];
    List<Records> listrecords = [];
    int index = 0;


  ProviderTry() {
  _init();
  }

  int _numberOfLots = 0;
  int get numberOfLots => _numberOfLots;

  Future<void> _init() async {
  final prefs = await SharedPreferences.getInstance();
  _numberOfLots = prefs.getInt(_num) ?? 0;
  notifyListeners();
  }

  Future<void> changeNumberOfLots(controller) async {
  final prefs = await SharedPreferences.getInstance();
  final number = int.parse(controller.toString());
  _numberOfLots = number;
  await prefs.setInt(_num, _numberOfLots);

  for (int i = 0; i < number; i++) {
      listateste.add(Vaga(name: "Vaga ${i + 1}", isFull: true,));
      }
  notifyListeners();
  }

    removeCar(int index){
      listacars.removeAt(index);
      notifyListeners();
    }
    aumentar(){
      index++;
      notifyListeners();
    }
    diminuir(){
      index--;
      notifyListeners();
    }
    reiniciar(){
      index = 0;
      notifyListeners();
    }
  addCar(String owner, String car, File? carPhoto, int indexx, String startDate){
    listacars.add(Cars(ownername: owner, carId: car, photo: carPhoto, index: indexx, start: startDate,));
    notifyListeners();
    }

    addRegister(String name, plate, startDate, endDate, File photo, int index){
    listrecords.add(Records(name: name, plate: plate, startDate: startDate,endDate: endDate, photography: photo, index: index,));
    notifyListeners();
    }
  }
