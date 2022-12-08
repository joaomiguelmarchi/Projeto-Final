import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    // TextEditingController numberController = TextEditingController();
    // int _counter = int.parse(numberController.text);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Preço p/hora'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white54,
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Faixa',
                            style: TextStyle(fontSize: 29, ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'Faixa 0',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'Faixa 1',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'Faixa 2',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Colors.black,
                            )),
                        child: const Center(
                          child: Text(
                            'Faixa 3',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white54,
                          border: Border.all(
                            width: 3,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Intervalo',
                            style: TextStyle(fontSize: 24, ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'Menos de 1h',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'Entre 1h e 4h',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'Entre 4h e 8h',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'Mais de 8h',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white54,
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Preço',
                            style: TextStyle(
                              fontSize: 29,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'RS 4,00',
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'RS 3,75',
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'RS 3,50',
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                            )),
                        child: const Center(
                          child: Text(
                            'RS 8,00',
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
  }
}
