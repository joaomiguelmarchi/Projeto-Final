import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:projeto_final/controller/locale_provider.dart';
import 'package:projeto_final/controller/provider_try.dart';
import 'package:projeto_final/l10n/L10n.dart';
import 'package:provider/provider.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final state = Provider.of<ProviderTry>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppLocalizations.of(context)!.screen2_title),
        ),
        body: (state.theme)
            ? (provider.locale == L10n.all.first)
                ? Center(
                    child: DataTable(
                      dataTextStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                      dataRowHeight: 90,
                      columnSpacing: 35,
                      columns: [
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column1,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column2,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column3,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text3)),
                        ])
                      ],
                    ),
                  )
                : Center(
                    child: DataTable(
                      dataTextStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                      dataRowHeight: 90,
                      columnSpacing: 35,
                      columns: [
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column1,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column2,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column3,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text3)),
                        ])
                      ],
                    ),
                  )
            : (provider.locale == L10n.all.first)
                ? Center(
                    child: DataTable(
                      dataTextStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                      dataRowHeight: 90,
                      columnSpacing: 35,
                      columns: [
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column1,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column2,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column3,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text3)),
                        ])
                      ],
                    ),
                  )
                : Center(
                    child: DataTable(
                      dataTextStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                      dataRowHeight: 90,
                      columnSpacing: 35,
                      columns: [
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column1,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column2,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text(
                                AppLocalizations.of(context)!.table_column3,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row1_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row2_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row3_text3)),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text2)),
                          DataCell(Text(
                              AppLocalizations.of(context)!.table_row4_text3)),
                        ])
                      ],
                    ),
                  ));
  }
}
