import 'package:flutter/material.dart';
import 'package:projeto_final/screens/screen3.1.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key, required BuildContext inheritedTry})
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQCjloS50idBb-NzjVQ2kfpy8QtVo5mEKl4g&usqp=CAU',
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
                SizedBox(
                  height: 70,
                  width: 90,
                  child: ElevatedButton(
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context3e1) => ScreenThreeEOne(
                              inheritedTry : context3e1,
                            ),
                          ),
                        );
                      },
                      child: const Text('Registro')),
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
