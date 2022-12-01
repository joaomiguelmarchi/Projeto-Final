import 'package:flutter/material.dart';
import 'dart:io';
import 'package:projeto_final/data/provider_try.dart';
import 'package:provider/provider.dart';

class Cars extends StatelessWidget {
  const Cars({
    required this.ownername,
    required this.carId,
    required this.photo,
    required this.index,
    Key? key,
  }) : super(key: key);
  final String ownername, carId;
  final File? photo;
  final int index;

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
                    photo!,
                    fit: BoxFit.cover,
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Nome: $ownername',
                  style: const TextStyle(fontSize: 25),
                ),
                Text(
                  'Placa: $carId',
                  style: const TextStyle(fontSize: 25),
                ),
                Text(
                  'Index: $index',
                  style: const TextStyle(fontSize: 25),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  Provider.of<ProviderTry>(context, listen: false).removeCar(index);
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
