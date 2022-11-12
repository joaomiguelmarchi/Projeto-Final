import 'package:flutter/material.dart';
import 'package:projeto_final/components/vagas.dart';

class InheritedTry extends InheritedWidget {
     InheritedTry({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Vaga> vagasList = [
    Vaga(name: 'Vaga 1', isFull: true,),
    Vaga(name: 'Vaga 2', isFull: false),
     Vaga(name: 'Vaga 3', isFull: false,),
     Vaga(name: 'Vaga 4', isFull: true,),
    Vaga(name: 'Vaga 5', isFull: true,),
    Vaga(name: 'Vaga 6', isFull: false,),
    Vaga(name: 'Vaga 7', isFull: true,),
    Vaga(name: 'Vaga 8', isFull: false,),
    Vaga(name: 'Vaga 9', isFull: false,),
  ];

  static InheritedTry of(BuildContext context) {
    final InheritedTry? result = context.dependOnInheritedWidgetOfExactType<InheritedTry>();
    assert(result != null, 'No InheritedTry found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedTry old) {
    return true;
  }
}
