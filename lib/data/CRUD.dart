import 'package:projeto_final/components/cars.dart';
import 'package:projeto_final/components/vagas.dart';
import 'package:projeto_final/data/databasehelper.dart';
import 'package:sqflite/sqflite.dart';

class CRUD {
  static const String table = 'CREATE TABLE $_table1name('
      '$_ID TEXT, '
      '$_OWNER TEXT, '
      '$_PARKING_LANE TEXT, '
      '$_PRICE INTEGER, '
      '$_INITIAL_RANGE INTEGER, '
      '$_END_RANGE INTEGER)';

  static const String _table1name = 'preco_table';
  static const String _ID = 'ID';
  static const String _OWNER = 'OWNER';
  static const String _PARKING_LANE = 'PARKING_LANE';
  static const String _PRICE = 'PRICE';
  static const String _INITIAL_RANGE = 'INITIAL_RANGE';
  static const String _END_RANGE = 'END_RANGE';

  save(Vaga vagas) async {}

  Future<List<Cars>> findAll() async {
    print('Acessando Find All');
    final Database bd = await getDatabase();
    final List<Map<String, dynamic>> result = await bd.query(table);
    print('procurando dados, resultado: $result');
    return toList(result);
  }

  List<Cars> toList(List<Map<String, dynamic>> ListaDeCarros) {
    final List<Cars> carros = [];
    for (Map<String, dynamic> linha in ListaDeCarros) {
      final Cars carro = Cars(
        ownername: linha[_OWNER],
        carId: linha[_ID],
        start: linha[_INITIAL_RANGE],
        endDate: linha[_END_RANGE],
      );
      carros.add(carro);
    }
    print('Lista de carros $carros');
    return carros;
  }

  Future<List<Cars>> find(String id) async {
    print('Acessando find: ');
    final Database bd = await getDatabase();
    final List<Map<String, dynamic>> result = await bd.query(
      table,
      where: '$_ID = ?',
      whereArgs: [id],
    );
    print('Tarefa encontrada: ${toList(result)}');
    return toList(result);
  }
}
