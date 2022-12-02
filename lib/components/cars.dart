import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';
import 'package:projeto_final/data/provider_try.dart';
import 'package:provider/provider.dart';

class Cars extends StatefulWidget {
  const Cars({
    required this.ownername,
    required this.carId,
    required this.photo,
    required this.index,
    required this.start,
    Key? key,
  }) : super(key: key);
  final String ownername, carId, start;
  final File? photo;
  final int index;

  @override
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  late final String end = DateFormat('yyyy-MM-dd KK:mm:ss a').format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              width: 150,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.file(
                  widget.photo!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Condutor: ${widget.ownername}',
                  style: const TextStyle(fontSize: 24),
                ),
                Text(
                  'Placa: ${widget.carId}',
                  style: const TextStyle(fontSize: 24),
                ),
                Text(
                  'Entrada: ${widget.start}',
                  style: const TextStyle(fontSize: 12),
                ),
                Text(
                  'Entrada: ${widget.index}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  Provider.of<ProviderTry>(context, listen: false)
                      .removeCar(widget.index);

                  Provider.of<ProviderTry>(context, listen: false).addRegister(
                      widget.ownername,
                      widget.carId,
                      widget.start,
                      end,
                      widget.photo!,
                      widget.index);

                  Provider.of<ProviderTry>(context, listen: false).reiniciar();
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
