import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:remainingtopis/commonfiles.dart';

class ExpansionPanelClass extends StatefulWidget {
  const ExpansionPanelClass({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelClass> createState() => _ExpansionPanelState();
}

class _ExpansionPanelState extends State<ExpansionPanelClass> {
  static const loremIpsum =
      'Hello congradulation to all for getting medal in the race';
  final List<Item> items = [
    Item(expandedValue: loremIpsum, headerValue: 'Panel1'),
    Item(expandedValue: loremIpsum, headerValue: 'Panel2'),
    Item(expandedValue: loremIpsum, headerValue: 'Panel3'),
    Item(expandedValue: loremIpsum, headerValue: 'Panel4'),
    Item(expandedValue: loremIpsum, headerValue: 'Panel5'),
    Item(expandedValue: loremIpsum, headerValue: 'Panel6'),
    Item(expandedValue: loremIpsum, headerValue: 'Panel7'),
  ];

  @override
  Widget build(BuildContext context) {
    return /*Scaffold(
        appBar: AppBar(
          title: Text('Expansion Panel'),
        ),
      body: SingleChildScrollView(
        child: ExpansionPanelList.radio(
          children: items.map((item) => ExpansionPanelRadio(
            canTapOnHeader: true,
              value: item.headerValue,
              headerBuilder:(context, isExpanded) => ListTile(
                title: Text(item.headerValue,style: TextStyle(fontSize: 20),),
              ),
              body: ListTile(
                title: Text(item.expandedValue,style: TextStyle(
                  fontSize:15,
                ),),
              ))).toList(),
        ),
      ),
    );*/

        Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() {
              items[index].isExpanded = !isExpanded;
            });
          },
          children: items
              .map((item) => ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: item.isExpanded,
                  headerBuilder: (context, isExpanded) => ListTile(
                        title: Text(
                          item.headerValue,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                  body: ListTile(
                    title: Text(
                      item.expandedValue,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  )))
              .toList(),
        ),
      ),
    );
  }
}

class Item {
  final String expandedValue;
  final String headerValue;
  bool isExpanded;

  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });
}
