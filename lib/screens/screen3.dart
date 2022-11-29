import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key})
      : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Listagem Estadias'),
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
                  Icon(Icons.list_alt_outlined, size: 90,),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'screen3.1');
        },
        child: const Icon(Icons.history),
      ),
    );
  }
}
