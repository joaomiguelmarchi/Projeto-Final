import 'package:flutter/material.dart';

class Vaga extends StatelessWidget {
  const Vaga({required this.name, required this.isFull, Key? key})
      : super(key: key);
  final String name;
  final bool isFull;

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
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(
          name,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        //(isFull) ? Icon(Icons.warning_amber) : Icon(Icons.add),
          (isFull) ? SizedBox(
            height: 50,
            width: 55,
            child: ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.warning_amber),
            ),
          )
              : SizedBox(
                height: 50,
                width: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.add
                  ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
