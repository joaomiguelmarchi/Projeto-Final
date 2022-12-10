import 'package:flutter/material.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/model/CRUD.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Cars extends StatefulWidget {
  const Cars({
    required this.ownername,
    required this.carId,
    //this.photo,
    required this.start,
    Key? key,
  }) : super(key: key);
  final String ownername, carId, start;

  //String? photo;

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
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   width: 150,
            //   height: 200,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(4),
            //     child: Image.file(
            //       photograph,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
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
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                CRUD().delete(widget.carId);

                state.addRegister(
                  widget.ownername,
                  widget.carId,
                  widget.start,
                );

                Navigator.pop(context);
              },
              icon: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
