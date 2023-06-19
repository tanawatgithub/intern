import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าจอของฉัน'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(label: Text('No')),
            DataColumn(label: Text('Cycle')),
            DataColumn(label: Text('Audit')),
            DataColumn(label: Text('StartDate')),
            DataColumn(label: Text('EndDate')),
            DataColumn(label: Text('Status')),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('1')),
                DataCell(Text('FMGT_2023_01_01')),
                DataCell(Text('524')),
                DataCell(Text('2023-01-01')),
                DataCell(Text('2023-01-31')),
                DataCell(Text('NEW')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2')),
                DataCell(Text('FMGT_2023_02_01')),
                DataCell(Text('524')),
                DataCell(Text('2023-02-01')),
                DataCell(Text('2023-02-31')),
                DataCell(Text('DONE')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('FMGT_2023_03_01')),
                DataCell(Text('524')),
                DataCell(Text('2023-03-01')),
                DataCell(Text('2023-03-31')),
                DataCell(Text('CANCEL')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('4')),
                DataCell(Text('FMGT_2023_04_01')),
                DataCell(Text('524')),
                DataCell(Text('2023-04-01')),
                DataCell(Text('2023-04-31')),
                DataCell(Text('END')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('5')),
                DataCell(Text('FMGT_2023_05_01')),
                DataCell(Text('524')),
                DataCell(Text('2023-05-01')),
                DataCell(Text('2023-05-31')),
                DataCell(Text('IN_PROGRESS')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
