import 'package:projeto_final/model/cars.dart';
import 'package:projeto_final/model/databasehelper.dart';
import 'package:sqflite/sqflite.dart';

class CRUD {
  static const String table = 'CREATE TABLE $_tablename('
      '$_id TEXT, '
      '$_owner TEXT, '
      '$_initialRange INTEGER)';


  static const String _tablename = 'vaga_table';
  static const String _id = 'ID';
  static const String _owner = 'OWNER';
  static const String _initialRange = 'INITIAL_RANGE';


  save(Cars car) async {
    print('Iniciando save');
    final Database bd = await getDatabase();
    var itemExists = await find(car.carId);
    if (itemExists.isEmpty) {
      print('a tarefa não existe');
      return await bd.insert(_tablename, toMap(car));
    } else {
      print('A tarefa já existe');
      return await bd.update(
        _tablename,
        toMap(car),
        where: '$_id = ?',
        whereArgs: [car.carId],
      );
    }
  }

  Map<String, dynamic> toMap(Cars car) {
    print('Convertendo pra Map');
    final Map<String, dynamic> carMap = Map();
    carMap[_owner] = car.ownername;
    carMap[_id] = car.carId;
    carMap[_initialRange] = car.start;
    //carMap[_endRange] = car.endDate;
    print('Mapa de tarefas: $carMap');
    return carMap;
  }

  Future<List<Cars>> findAll() async {
    print('Acessando Find All');
    final Database bd = await getDatabase();
    final List<Map<String, dynamic>> result = await bd.query(_tablename);
    print('procurando dados, resultado: $result');
    return toList(result);
  }

  List<Cars> toList(List<Map<String, dynamic>> listaDeCarros) {
    final List<Cars> cars = [];
    for (Map<String, dynamic> linha in listaDeCarros) {
      final Cars carro = Cars(
        ownername: linha[_owner],
        carId: linha[_id],
        start: linha[_initialRange],
      );
      cars.add(carro);
    }
    print('Lista de carros $cars');
    return cars;
  }

  Future<List<Cars>> find(String id) async {
    print('Acessando find: ');
    final Database bd = await getDatabase();
    final List<Map<String, dynamic>> result = await bd.query(
      _tablename,
      where: '$_id = ?',
      whereArgs: [id],
    );
    print('Tarefa encontrada: ${toList(result)}');
    return toList(result);
  }

  delete(String carId) async {
    print('deletando carro');
    final Database bd = await getDatabase();
    return bd.delete(
      _tablename,
      where: '$_id = ?',
      whereArgs: [carId],
    );
  }
}
