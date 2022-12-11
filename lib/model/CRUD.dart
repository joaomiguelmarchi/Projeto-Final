import 'package:projeto_final/model/cars.dart';
import 'package:projeto_final/model/databasehelper.dart';
import 'package:sqflite/sqflite.dart';

class CRUD {
  static const String table = 'CREATE TABLE $_tablename('
      '$_id TEXT, '
      '$_owner TEXT, '
      '$_initialRange DATETIME)';


  static const String _tablename = 'vaga_table';
  static const String _id = 'ID';
  static const String _owner = 'OWNER';
  static const String _initialRange = 'INITIAL_RANGE';


  save(Cars car) async {
    final Database bd = await getDatabase();
    var itemExists = await find(car.carId);
    if (itemExists.isEmpty) {
      return await bd.insert(_tablename, toMap(car));
    } else {
      return await bd.update(
        _tablename,
        toMap(car),
        where: '$_id = ?',
        whereArgs: [car.carId],
      );
    }
  }

  Map<String, dynamic> toMap(Cars car) {
    final Map<String, dynamic> carMap = {};
    carMap[_owner] = car.ownername;
    carMap[_id] = car.carId;
    carMap[_initialRange] = car.start;
    return carMap;
  }

  Future<List<Cars>> findAll() async {
    final Database bd = await getDatabase();
    final List<Map<String, dynamic>> result = await bd.query(_tablename);
    return toList(result);
  }

  List<Cars> toList(List<Map<String, dynamic>> listaDeCarros) {
    final List<Cars> cars = [];
    for (Map<String, dynamic> row in listaDeCarros) {
      final Cars carro = Cars(
        ownername: row[_owner],
        carId: row[_id],
        start: row[_initialRange],
      );
      cars.add(carro);
    }
    return cars;
  }

  Future<List<Cars>> find(String id) async {
    final Database bd = await getDatabase();
    final List<Map<String, dynamic>> result = await bd.query(
      _tablename,
      where: '$_id = ?',
      whereArgs: [id],
    );
    return toList(result);
  }

  delete(String carId) async {
    final Database bd = await getDatabase();
    return bd.delete(
      _tablename,
      where: '$_id = ?',
      whereArgs: [carId],
    );
  }
}
