// import 'package:projeto_final/model/cars.dart';
// import 'package:projeto_final/model/vagas.dart';
// import 'package:projeto_final/model/databasehelper.dart';
// import 'package:sqflite/sqflite.dart';
//
// class CRUD {
//   static const String table = 'CREATE TABLE $_table1name('
//       '$_id TEXT, '
//       '$_owner TEXT, '
//       '$_parkingLane TEXT, '
//       '$_price INTEGER, '
//       '$_initialRange INTEGER, '
//       '$_endRange INTEGER)';
//
//   static const String _table1name = 'preco_table';
//   static const String _id = 'ID';
//   static const String _owner = 'OWNER';
//   static const String _parkingLane = 'PARKING_LANE';
//   static const String _price = 'PRICE';
//   static const String _initialRange = 'INITIAL_RANGE';
//   static const String _endRange = 'END_RANGE';
//
//   save(Vaga vagas) async {}
//
//   Future<List<Cars>> findAll() async {
//     //print('Acessando Find All');
//     final Database bd = await getDatabase();
//     final List<Map<String, dynamic>> result = await bd.query(table);
//     //print('procurando dados, resultado: $result');
//     return toList(result);
//   }
//
//   List<Cars> toList(List<Map<String, dynamic>> listaDeCarros) {
//     final List<Cars> carros = [];
//     for (Map<String, dynamic> linha in listaDeCarros) {
//       final Cars carro = Cars(
//         ownername: linha[_owner],
//         carId: linha[_id],
//         start: linha[_initialRange],
//         endDate: linha[_endRange],
//       );
//       carros.add(carro);
//     }
//     //print('Lista de carros $carros');
//     return carros;
//   }
//
//   Future<List<Cars>> find(String id) async {
//     //print('Acessando find: ');
//     final Database bd = await getDatabase();
//     final List<Map<String, dynamic>> result = await bd.query(
//       table,
//       where: '$_id = ?',
//       whereArgs: [id],
//     );
//    // print('Tarefa encontrada: ${toList(result)}');
//     return toList(result);
//   }
// }
