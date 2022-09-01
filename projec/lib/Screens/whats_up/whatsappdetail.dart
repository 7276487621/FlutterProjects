import 'package:flutter/material.dart';
import 'package:projec/Screens/whats_up/whatup_widget.dart';

class WatsappDetail extends StatelessWidget {
  // String label= '';
  // String msg = '';

  // WatsappDetail({this.label='',this
  // .msg=''});
  WatsappDetail();


  String label= '';
  String msg = '';

  Map data ={};


  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;

    label = data['label'];
    msg = data['msg'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF075E54),
        title: labels(label,size: 20.0),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: labels(msg, color: Colors.purple, size: 20.0),
      ),
    );
  }
}
