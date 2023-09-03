import 'package:engtoarabic_app/collections/translation_collection.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class MyTable extends StatelessWidget {
  final Isar isar;

  const MyTable({required this.isar, super.key});

  @override
  Widget build(BuildContext context) {
    Stream<List<TranslationCollection>> readData() async* {
      final translation = isar.translationCollections;
      yield* translation.where().watch(fireImmediately: true);
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        title: const Text(
          'Saved Data',
          overflow: TextOverflow.fade,
        ),
      ),
      body: StreamBuilder<List<TranslationCollection>>(
          stream: readData(),
          builder: (context, snapshot) {
            return Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.all(8),
                width: 450,
                child: DataTable(
                  border: TableBorder.all(color: Colors.grey.shade200),
                  columns: const [
                    DataColumn(
                      label: Text('ID'),
                    ),
                    DataColumn(
                      label: Text('English'),
                    ),
                    DataColumn(
                      label: Text('Arabic'),
                    ),
                  ],
                  rows: [
                    for (int i = 0; i < snapshot.data!.length; i++)
                      DataRow(cells: [
                        DataCell(Text((snapshot.data![i].id).toString())),
                        DataCell(
                          Text((snapshot.data![i].englishText).toString()),
                        ),
                        DataCell(
                          Text(
                              (snapshot.data![i].arabicTranslation).toString()),
                        ),
                      ])
                  ],
                ),
              ),
            );
          }),
    );
  }
}
