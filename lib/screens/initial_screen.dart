import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dia 7 de 35'),
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
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    Container(
                      height: 70,
                       width: 170,
                        decoration: BoxDecoration(
                           color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                       child: ElevatedButton(
                           onPressed: () {
                            Navigator.pushNamed(context, 'screen1');
                          ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                              ///Design do SnackBar basico.
                              width: 100,
                            padding: const EdgeInsets.all(13),
                          behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                            ),
                          duration: const Duration(milliseconds: 500),
                           content: const Text('Resposta 1'),
                            ),
                          );
                          },
                         child: const Text(
                          'N° de Vagas',
                          style: TextStyle(
                            fontSize: 20,
                    ),
                  ),
                ),
              ),
                Container(
                height: 70,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'screen2');
                  },
                  child: const Text(
                    'Preço p/ Hora',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 119,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'enterscreen');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        ///Design do SnackBar basico.
                        width: 100,
                        padding: const EdgeInsets.all(13),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        duration: const Duration(milliseconds: 500),

                        content: const Text('Resposta 3!'),
                      ),
                    );
                  },
                  child: const Text(
                    'Entradas',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
