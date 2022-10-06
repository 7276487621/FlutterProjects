
import 'dart:math';

import 'package:flutter/material.dart';

class sortableDataTable extends StatefulWidget {
  const sortableDataTable({Key? key}) : super(key: key);

  @override
  State<sortableDataTable> createState() => _sortableDataTableState();
}

class _sortableDataTableState extends State<sortableDataTable> {

  ///Generate a list of fiction product
  final List<Map> _products = List.generate(30, (i) {
        return {
          "id":i, "name":"Product $i","price":Random().nextInt(200) + 1
        };
  });

  int _currentSortColumn = 0;
  bool _isAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sorting Table'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: DataTable(
            sortColumnIndex: _currentSortColumn,
              sortAscending: _isAscending,
              headingRowColor: MaterialStateProperty.all(Colors.amber[200]),

              columns: [
                const DataColumn(label: Text('Id')),
                const DataColumn(label: Text('Name')),
                DataColumn(
                    label: const Text(
                        'Price',
                      style: TextStyle(
                        color: Colors.blue,fontWeight: FontWeight.bold
                      ),
                    ),
                  /// Sorting function
                  onSort: (columnIndex, _){
                      setState(() {
                        _currentSortColumn = columnIndex;
                        if(_isAscending == true){
                          _isAscending = false;
                          ///Sort the product list in Ascending,order by price
                          _products.sort((productA, productB)=>
                              productB['price'].compareTo(productA['price']));
                        }
                        else{
                          _isAscending = true;
                          ///sort the product list in Descending, order
                          _products.sort((productA, productB)=>
                          productA['price'].compareTo(productB['price'])
                          );

                        }
                      });
                  }
                )
              ],

              rows: _products.map((item){
                return DataRow(
                    cells: [
                      DataCell(Text(item['id'].toString())),
                      DataCell(Text(item['name'].toString())),
                      DataCell(Text(item['price'].toString())),
                    ]);
              }).toList(),
          ),
        ),
      ),
    );
  }
}
