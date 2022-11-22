import 'package:flutter/material.dart';

class ScreenThreeEOne extends StatefulWidget {
  const ScreenThreeEOne({Key? key})
      : super(key: key);

  @override
  State<ScreenThreeEOne> createState() => _ScreenThreeEOneState();
}

class _ScreenThreeEOneState extends State<ScreenThreeEOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Registro'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 750,
            width: 375,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.history, size: 90,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
