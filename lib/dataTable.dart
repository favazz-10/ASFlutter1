import 'package:flutter/material.dart';

class datatable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('DataTable'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Place')),
            DataColumn(label: Text('Salary')),
            DataColumn(label: Text('Education')),
          ], rows: const [
            DataRow(
              cells: [
                DataCell(Text('Favaz')),
                DataCell(Text('21')),
                DataCell(Text('Kannur')),
                DataCell(Text('20000')),
                DataCell(Text('BCA')),
              ],
            ),
            DataRow(cells: [
              DataCell(Text('Nihal')),
              DataCell(Text('21')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('20000')),
              DataCell(Text('BCA')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nihal')),
              DataCell(Text('21')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('20000')),
              DataCell(Text('BCA')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nihal')),
              DataCell(Text('21')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('20000')),
              DataCell(Text('BCA')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nihal')),
              DataCell(Text('21')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('20000')),
              DataCell(Text('BCA')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nihal')),
              DataCell(Text('21')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('20000')),
              DataCell(Text('BCA')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nihal')),
              DataCell(Text('21')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('20000')),
              DataCell(Text('BCA')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nihal')),
              DataCell(Text('21')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('20000')),
              DataCell(Text('BCA')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nihal')),
              DataCell(Text('21')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('20000')),
              DataCell(Text('BCA')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nihal')),
              DataCell(Text('21')),
              DataCell(Text('Ernakulam')),
              DataCell(Text('20000')),
              DataCell(Text('BCA')),
            ]),
          ]),
        ));
  }
}

void main() {
  runApp(MaterialApp(
    home: datatable(),
  ));
}
