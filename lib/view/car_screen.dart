// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:projeto_final/model/cars.dart';
// import 'package:projeto_final/controller/provider_try.dart';
// import 'package:provider/provider.dart';
//
// class CarScreen extends StatefulWidget {
//   const CarScreen({Key? key}) : super(key: key);
//
//   @override
//   State<CarScreen> createState() => _CarScreenState();
// }
//
// class _CarScreenState extends State<CarScreen> {
//   final List<Cars> lista = [];
//
//   @override
//   Widget build(BuildContext context) {
//     final state = Provider.of<ProviderTry>(context);
//     print('lenght ${state.listacars.length}');
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Titulo'),
//       ),
//       body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Colors.cyan,
//                 Colors.yellow,
//               ],
//             ),
//           ),
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: state.listacars.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       state.listacars[index],
//                       SizedBox(
//                         width: 30,
//                         height: 30,
//                         child: IconButton(
//                             onPressed: () {
//                               final String end1 = DateFormat('yyyy-MM-dd KK:mm:ss a')
//                                   .format(DateTime.now())
//                                   .toString();
//
//                               state.removeCar(state.listacars[index], end1);
//                               state.addRegister();
//                             },
//                             icon: const Icon(Icons.delete)),
//                       ),
//                     ],
//                   ),
//
//                 ],
//               );
//             },
//           ),
//         ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pushNamed(context, 'recordsscreen');
//         },
//         child: const Icon(Icons.library_books),
//       ),
//     );
//   }
// }
