
import 'package:flutter/material.dart';

class SelectedBook extends StatefulWidget {
  const SelectedBook({Key? key}) : super(key: key);

  @override
  State<SelectedBook> createState() => _SelectedBookState();
}

class _SelectedBookState extends State<SelectedBook> {

   String? bookUrl;
   String? bookTitle;

   _SelectedBookState();

   Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    bookUrl = data['bookUrl'];
    bookTitle = data['bookTitle'];
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Detail'),
        centerTitle: true,
      ),
      
      body: ListTile(
        title: Center(
          child: Container(
            padding: EdgeInsets.only(top: 10.0),
            child: ListView(
              children: [
                Image.network(bookUrl!,fit: BoxFit.cover,),
                Center(
                  child: Text(bookTitle!,style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Billabong'
                  ),),
                )
              ],
            )
            
            
          ),
        ),
      ),

    );
  }
}
