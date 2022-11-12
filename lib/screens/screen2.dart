import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key, required BuildContext inheritedTry})
      : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Preço p/hora'),
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
                        'https://www.lance.com.br/files/article_main/uploads/2022/05/26/629036ae19f65.jpeg',
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
