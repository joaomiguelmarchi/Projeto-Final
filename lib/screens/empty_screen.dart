import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 200,
          height: 200,
          child: Icon(
            Icons.warning_amber,
            size: 150,
          ),
        ),
        const SizedBox(
          width: 350,
          height: 100,
          child: Text(
            '    Nenhuma Vaga',
            style: TextStyle(fontSize: 40),
          ),
        ),
        SizedBox(
          width: 130,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'screen1.1');
            },
            child: const Text('ADICIONAR'),
          ),
        )
      ],
    );
  }
}
