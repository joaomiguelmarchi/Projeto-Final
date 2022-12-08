import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/model/CRUD.dart';
import 'package:projeto_final/model/cars.dart';
import 'package:provider/provider.dart';

class CarsScreen extends StatefulWidget {
  const CarsScreen({Key? key}) : super(key: key);

  @override
  State<CarsScreen> createState() => _CarsScreenState();
}

class _CarsScreenState extends State<CarsScreen> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Veículos'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<List<Cars>>(
              future: CRUD().findAll(),
              builder: (context, snapshot) {
                List<Cars>? items = snapshot.data;
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return Center(
                      child: Column(
                        children: const [
                          CircularProgressIndicator(),
                          Text('Carregando'),
                        ],
                      ),
                    );
                  case ConnectionState.waiting:
                    return Center(
                      child: Column(
                        children: const [
                          CircularProgressIndicator(),
                          Text('Carregando'),
                        ],
                      ),
                    );
                  case ConnectionState.active:
                    return Center(
                      child: Column(
                        children: const [
                          CircularProgressIndicator(),
                          Text('Carregando'),
                        ],
                      ),
                    );
                  case ConnectionState.done:
                    if (snapshot.hasData && items != null) {
                      if (items.isNotEmpty) {
                        return ListView.builder(
                            itemCount: items.length,
                            itemBuilder: (BuildContext context, int index) {
                              state.getl(items.length);
                              final Cars car = items[index];
                              return car;
                            });
                      }
                      return Center(
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.warning_amber,
                                size: 200,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Não há Nenhum Veículo',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 35,),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return const Center(
                      child: Text(
                        'Erro!',
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                }
              }),
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
