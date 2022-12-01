import 'dart:io';
import 'package:flutter/material.dart';
import 'package:projeto_final/components/vagas.dart';
import 'package:projeto_final/components/cars.dart';
import 'package:shared_preferences/shared_preferences.dart';


const _num = "_num";
class ProviderTry extends ChangeNotifier{
    List<Vaga> listateste = [];
    List<Cars> listacars = [];
    int index = 0;

    aumentar(){
      index++;
      notifyListeners();
    }
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
  final text = controller.toString();
  final number = int.parse(text);
  _numberOfLots = number;
  await prefs.setInt(_num, _numberOfLots);

  for (int i = 0; i < number; i++) {
      listateste.add(Vaga(name: "Vaga ${i + 1}", isFull: true,));
      }
  notifyListeners();
  }

    removeCar(int index){
      listacars.removeAt(index);
    }
  addCar(String owner, String car, File? carPhoto, int indexx){
    listacars.add(Cars(ownername: owner, carId: car, photo: carPhoto, index: indexx,));
    }
  }
