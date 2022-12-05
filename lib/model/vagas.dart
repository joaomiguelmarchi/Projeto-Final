import 'package:flutter/material.dart';

class Vaga extends StatelessWidget {
  const Vaga({required this.name, Key? key})
      : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 90,
                width: 350,
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 3,
                )
              ),
              child:
              Center(
                child: Text(
            name,
            style: const TextStyle(
                fontSize: 25,
            ),
          ),
              )
      ),
    );
  }
}
