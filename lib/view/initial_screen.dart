import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    return Scaffold(
      body: Center(
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              (state.theme)
                  ? SizedBox(
                      height: 400,
                      width: 400,
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    )
                  : SizedBox(
                      height: 400,
                      width: 400,
                      child: Image.asset(
                        'assets/images/logo_dark.png',
                      ),
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          state.init();
                          if (state.listoflots.isEmpty ||
                              state.numberOfLots != state.listoflots.length) {
                            state.buildList();
                          }
                          Navigator.pushNamed(context, 'screen1');
                        },
                        child: const Text(
                          'N° de Vagas',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'enterscreen');
                        },
                        child: const Text(
                          'Entradas',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'carsscreen');
                        },
                        child: const Text(
                          'Veículos',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      if (state.listoflots.isEmpty ||
                          state.numberOfLots != state.listoflots.length) {
                        state.buildList();
                      }
                      Navigator.pushNamed(context, 'vagasrest');
                    },
                    child: const Text(
                      'Vagas Utilizadas',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'settings');
          },
          icon: const Icon(Icons.settings),
        ),
      ),
    );
  }
}
