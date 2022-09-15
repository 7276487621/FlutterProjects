import 'package:flutter/material.dart';

import 'firestorecloud_database.dart';

class DisplayData extends StatefulWidget {
  List<Map> data;
  DisplayData(this.data,{Key? key}) : super(key: key);

  @override
  State<DisplayData> createState() => _DisplayDataState();
}

class _DisplayDataState extends State<DisplayData> {

  @override
  void initState() {
    FirebaseCloudStore.selectValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.data.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            FirebaseCloudStore.selectedItem =
            widget.data[index]['key'];
          },
          title: Text(widget.data[index]['name']),
          trailing: Text(widget.data[index]['age']),
        ),
      ),
    );
  }
}
