import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/model/CRUD.dart';
import 'package:provider/provider.dart';

class Cars extends StatefulWidget {
  Cars({
    required this.ownername,
    required this.carId,
    this.photo,
    this.endDate,
    required this.start,
    Key? key,
  }) : super(key: key);
  final String ownername, carId, start;
  late String? endDate;
  final File? photo;

  @override
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  late final String end =
      DateFormat('yyyy-MM-dd KK:mm:ss a').format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.pinkAccent, Colors.amber]),
            border: Border.all(
              color: Colors.black,
              width: 3,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   width: 150,
            //   height: 200,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(4),
            //     // child: Image.file(
            //     //   widget.photo!,
            //     //   fit: BoxFit.cover,
            //     // ),
            //   ),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Condutor: ${widget.ownername}',
                  style: const TextStyle(fontSize: 23),
                ),
                Text(
                  'Placa: ${widget.carId}',
                  style: const TextStyle(fontSize: 24),
                ),
                Text(
                  'Entrada: ${widget.start}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  CRUD().delete(widget.carId);

                  final String endRange;
                  (widget.endDate == null)
                      ? endRange = end
                      : endRange = widget.endDate!;

                  Provider.of<ProviderTry>(context, listen: false).addRegister(
                      widget.ownername,
                      widget.carId,
                      widget.start,);

                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.delete,
                ))
          ],
        ),
      ),
    );
  }
}
