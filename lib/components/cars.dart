import 'package:flutter/material.dart';
import 'dart:io';

class Cars extends StatelessWidget {
  const Cars(
      {required this.ownername,
      required this.carId,
      required this.photo,
      Key? key})
      : super(key: key);
  final String ownername, carId;
  final File? photo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.pinkAccent, Colors.white]),
            border: Border.all(
              color: Colors.black,
              width: 3,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              ownername,
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              carId,
              style: const TextStyle(fontSize: 25),
            ),
            SizedBox(width: 150, height: 150, child: Image.file(photo!)),
          ],
        ),
      ),
    );
  }
}
