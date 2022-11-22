//  import 'package:projeto_final/components/vagas.dart';
// import 'package:projeto_final/data/databasehelper.dart';
// import 'package:sqflite/sqflite.dart';
//
// class CRUD{
//   //  static const String table = 'CREATE TABLE $_table1name('
//   //      '$_ID INTEGER, '
//   //      '$_PARKING_LANE TEXT, '
//   //      '$_PRICE INTEGER, '
//   //      '$_INITIAL_RANGE INTEGER, '
//   //      '$_END_RANGE INTEGER)';
//   //
//   //  static const String _table1name = 'preco_table';
//   //  static const String _ID = 'ID';
//   //  static const String _PARKING_LANE = 'PARKING_LANE';
//   // static const String _PRICE = 'PRICE';
//   //  static const String _INITIAL_RANGE = 'INITIAL_RANGE';
//   //  static const String _END_RANGE = 'END_RANGE';
//
//    static const String table1 = 'CREATE TABLE $_table2name('
//        '$_name TEXT, '
//        '$_isFull BLOB)';
//
//    static const String _table2name = 'vaga_table';
//    static const String _name = 'nome';
//    static const String _isFull = 'isFull';
//
//
//    save (Vaga vagas) async{}
//
//    Future<List<Vaga>> findAll() async{
//      print('Acessando Find All');
//       final Database bd = await getDatabase();
//       final List<Map<String, dynamic>> result = await bd.query(table1);
//       print('procurando dados, resultado: $result');
//       return toList(result);
//    }
//     List<Vaga> toList(List<Map<String, dynamic>> ListaDeVagas){
//      final List<Vaga> vagas1 = [];
//
//      for (Map<String, dynamic> linha in ListaDeVagas){
//        final Vaga vagas2 = Vaga(name:linha[_name], isFull: linha[_isFull],);
//        vagas1.add(vagas2);
//      }
//      print('Lista de vagas $vagas1');
//      return vagas1;
//     }
//     Future<List<Vaga>> find(String nomedavaga) async{
//      print('Finding: ');
//      final Database bd = await getDatabase();
//      final List<Map<String, dynamic>> result = await bd.query(table1);
//      return toList(result);
//     }
//  }