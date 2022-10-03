import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class FilterData extends StatefulWidget {
  const FilterData({Key? key}) : super(key: key);

  @override
  State<FilterData> createState() => _FilterDataState();
}

class _FilterDataState extends State<FilterData> {

  List<String> Collages = [
    " JSPM Tathavade",
    " COEP Pune",
    " PVPIT Pune",
    " Fhargusan collage deccan",
    " Symboisis Shivajinagar",
    " Sinhgad Collage Kondhwa",
    " D.Y Patil Collage Pune",
    " AIMS Institute Of pune",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: DropdownSearch(

            popupBackgroundColor: Colors.tealAccent.shade100,
            popupShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            dropdownSearchDecoration: InputDecoration(
              filled: true,
              fillColor: Colors.lightBlueAccent,
             isCollapsed: true,
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),

             ),
            ),
            searchBoxDecoration: InputDecoration(
              // filled: true,
              // fillColor: Colors.blueGrey.shade300,
              hintText: 'Search Collage',
              prefixIcon: Icon(Icons.search,size: 20.0,),
              hintStyle: TextStyle(
                fontSize: 20.0,
              ),
              focusColor: Colors.lightBlueAccent,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple,width: 2.0,style: BorderStyle.solid)
              )
            ),

            //mode of dropdown
            mode: Mode.DIALOG,
            //to show search box
            showSearchBox: true,
            showSelectedItem: true,
            //list of dropdown items
            items: Collages,
            onChanged: print,
            //show selected item
            selectedItem: " Pune collages",
          ),
        ),
      ),
    );
  }
}