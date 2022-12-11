import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:provider/provider.dart';

class Records extends StatefulWidget {
  const Records({
    Key? key,
    required this.name,
    required this.plate,
    required this.startDate,
    this.photography,
    required this.endDate,
  }) : super(key: key);
  final String name, plate;
  final DateTime startDate, endDate;
  final File? photography;

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  late double price = 0;
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderTry>(context);
    final a = widget.startDate.difference(widget.endDate).inMinutes;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 450,
        width: 90,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 3,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              AppLocalizations.of(context)!.records_list_title,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${AppLocalizations.of(context)!.records_list_name}'
                    '${widget.name}',
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${AppLocalizations.of(context)!.records_list_plate}'
                    '${widget.plate}',
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${AppLocalizations.of(context)!.records_list_start}'
                    '${DateFormat('yyyy-MM-dd KK:mm:ss')
                    .format(widget.startDate)}',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${AppLocalizations.of(context)!.records_list_end}'
                    '${DateFormat('yyyy-MM-dd KK:mm:ss')
                    .format(widget.endDate)}',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            (price == 0)
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            price = state.getPrice(a);
                            print(price);
                            state.getEarn(price);
                          });
                        },
                        child: Text(
                            AppLocalizations.of(context)!.records_list_btn1)),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${AppLocalizations.of(context)!.records_list_text}'
                          '${price.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
