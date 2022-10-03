
import 'package:flutter/material.dart';

import 'commonfiles.dart';



List<Item> generatedItems(int numberOfItems){
  return List<Item>.generate(numberOfItems, (int index)  {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class ExpansionPanelList extends StatefulWidget {
  const ExpansionPanelList({Key? key, required Null Function(int index, bool isExpanded) expansionCallback, required List<ExpansionPanel> children}) : super(key: key);

  @override
  State<ExpansionPanelList> createState() => _ExpansionPanelListState();
}

class _ExpansionPanelListState extends State<ExpansionPanelList> {

  final List<Item> _data = generatedItems(8);

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     child: Container(
       child: _buildPanel(),
     ),
   );
  }

  Widget _buildPanel() {
    return Scaffold(
      body: Column(
        children: [
          ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
    setState(() {
    _data[index].isExpanded = !isExpanded;
    });
    },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle:
              const Text('To delete this panel, tap the trash can icon'),
              trailing: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    ),
        ],
      ),
    );

  }
  
}
