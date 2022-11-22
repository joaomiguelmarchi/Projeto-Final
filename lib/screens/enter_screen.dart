import 'package:flutter/material.dart';

class EnterScreen extends StatelessWidget {
  const EnterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('A'),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
