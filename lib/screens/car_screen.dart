import 'package:flutter/material.dart';
import 'package:projeto_final/components/cars.dart';
import 'package:projeto_final/data/provider_try.dart';
import 'package:provider/provider.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  final List<Cars> lista = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    print('lenght ${state.listacars.length}');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Titulo'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.cyan,
              Colors.yellow,
            ],
          ),
        ),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: state.listacars.length,
              itemBuilder: (context, index) {
                return Container(
                    child: state.listacars[index],
                    );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'recordsscreen');
        },
        child: const Icon(Icons.library_books),
      ),
    );
  }
}
