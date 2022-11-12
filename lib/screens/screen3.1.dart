import 'package:flutter/material.dart';

class ScreenThreeEOne extends StatefulWidget {
  const ScreenThreeEOne({Key? key, required BuildContext inheritedTry})
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
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 200,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTyqzl26JHOG-a40Zv_7b7owCD80BwUKsrKg&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                      onPressed:(){
                        Navigator.pop(context);
                      },
                      child: const Text('POP')),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
