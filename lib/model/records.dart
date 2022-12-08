import 'package:flutter/material.dart';
import 'dart:io';

import 'package:intl/intl.dart';

class Records extends StatefulWidget {
   const Records({
    Key? key,
    required this.name,
    required this.plate,
    required this.startDate,
     this.photography,
  }) : super(key: key);
  final String name, plate, startDate;
   final File? photography;

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  final end1 = DateFormat('yyyy-MM-dd KK:mm:ss a').format(DateTime.now()).toString();
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 450,
        width: 90,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 3,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Veículo Removido',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Condutor: ${widget.name}',
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Placa: ${widget.plate}',
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Entrada: ${widget.startDate}',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Saída: $end1',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     width: 150,
            //     height: 200,
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(4),
            //       child: Image.file(
            //         widget.photography!,
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
