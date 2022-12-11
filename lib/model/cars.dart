import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/model/CRUD.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Cars extends StatefulWidget {
  const Cars({
    required this.ownername,
    required this.carId,
    required this.start,
    Key? key,
  }) : super(key: key);
  final String ownername, carId, start;


  @override
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${AppLocalizations.of(context)!.cars_list_name}${widget.ownername}',
                  style: const TextStyle(
                    fontSize: 23,
                  ),
                ),
                Text(
                  '${AppLocalizations.of(context)!.cars_list_plate}${widget.carId}',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                Text(
                  '${AppLocalizations.of(context)!.cars_list_start}${widget.start}',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                String end1 = DateFormat('yyyy-MM-dd KK:mm:ss').format(DateTime.now());
                CRUD().delete(widget.carId);
                  print(DateTime.parse(widget.start));

                state.addRegister(
                  widget.ownername,
                  widget.carId,
                  DateTime.parse(widget.start),
                  DateTime.parse(end1),
                );
              },
              icon: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
