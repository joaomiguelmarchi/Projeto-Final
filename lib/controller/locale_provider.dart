import 'package:flutter/material.dart';
import 'package:projeto_final/l10n/L10n.dart';

class LocaleProvider extends ChangeNotifier{
  Locale _locale = L10n.all.last;
  Locale get locale => _locale;

  void changeLocale(){
    if(_locale==L10n.all.first){
      _locale=L10n.all.last;
    }else if (_locale == L10n.all.last){
      _locale = L10n.all.first;
    }
    notifyListeners();
  }
}