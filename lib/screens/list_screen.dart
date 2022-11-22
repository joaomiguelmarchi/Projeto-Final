
import 'package:flutter/material.dart';
import 'package:projeto_final/data/provider_try.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: (context.watch<ProviderTry>().listateste),
    );
  }
}
