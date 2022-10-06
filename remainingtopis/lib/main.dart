import 'package:flutter/material.dart';
import 'package:remainingtopis/expansionPanel.dart';
import 'package:remainingtopis/permissionHandlerWithoutCommonWidget.dart';
import 'package:remainingtopis/persistentBottomSheet.dart';
import 'package:remainingtopis/selectedBook.dart';
import 'package:remainingtopis/sortableDatatable.dart';
import 'package:remainingtopis/tabbar.dart';
import 'SearchFilter.dart';
import 'allcharts.dart';
import 'customTabBarController.dart';
import 'filterlist.dart';

void main() {
  runApp(
    MaterialApp(
      // theme: ThemeData(
      //   brightness: Brightness.light,
      // ),
      //
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      //
      // themeMode: ThemeMode.dark,
      // home: SelectableTextClass(),
        debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>const SelectableTextClass(),
        'tabBar':(context)=>const TabBarWidget(),
        'customTabBar':(context)=>const customTabBar(),
        'BottomSheetDemo':(context)=> BottomSheetDemo(),
        'ExpansionPanelList':(context)=> const ExpansionPanelList(),
        'AllChartsFlutter':(context)=> const AllChartsFlutter(),
        'PermissionHandlerWithoutCommonWidget':(context)=>const PermissionHandlerWithoutCommonWidget(),
        'FilterData':(context)=>const FilterData(),
        'SearchFilter':(context)=>const SearchFilter(),
        'SelectedBook':(context)=>const SelectedBook(),
        'sortableDataTable':(context)=>const sortableDataTable(),
        'ExpansionPanel':(context)=>const ExpansionPanelClass(),
      },
    )
  );
}

class SelectableTextClass extends StatefulWidget {
  const SelectableTextClass({Key? key}) : super(key: key);

  @override
  State<SelectableTextClass> createState() => _SelectableTextClassState();
}

class _SelectableTextClassState extends State<SelectableTextClass> {
  bool dateBool = false;
  bool timeBool = false;
  DateTime? date;
  TimeOfDay? time;
  String selectedDate = '';
  String selectedTime = '';

  List<String> items =[
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
  ];

  String DefaultValue = 'item1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top:50.0 ),
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  'my selectable text',
                  // onTap: ()=>print('that tickles!'),
                  maxLines: 1,
                  scrollPhysics: ClampingScrollPhysics(),
                  showCursor: true,
                  cursorWidth: 2.0,
                  cursorColor: Colors.green,
                  toolbarOptions: ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),
                  cursorRadius: Radius.circular(5.0),
                  style: TextStyle(
                      color: Colors.blue
                  ),
                ),

                SizedBox(height: 10.0,),
                SelectableText.rich(TextSpan(
                  text: 'my selectable ritch text!!',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                ),

                DropdownButton(
                    value: DefaultValue,
                    onChanged: (String? value) {
                      setState((){
                        DefaultValue = value.toString();

                      });
                    },
                    items:items.map((e) => DropdownMenuItem(child: Text(e.toString()),value: e.toString(),)).toList()
                ),

                ButtonBar(

                  children: [
                    CircleAvatar(

                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text('Home'),
                      style: TextButton.styleFrom(
                          primary: Colors.pink.shade300,
                          backgroundColor: Colors.yellow
                      ),

                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text('Profile'),
                      style: TextButton.styleFrom(
                        primary: Colors.orange.shade300,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text('Logout'),
                      style: TextButton.styleFrom(
                        primary: Colors.teal.shade300,
                        backgroundColor: Colors.purple,
                      ),
                    ),

                  ],
                  alignment: MainAxisAlignment.center,
                  // buttonPadding: EdgeInsets.all(30.0),
                  // mainAxisSize: MainAxisSize.min,
                ),

                TextButton(onPressed: (){
                  Navigator.pushNamed(context, 'tabBar');
                }, child: Text('tabBar')),

                TextButton(onPressed: (){
                  Navigator.pushNamed(context, 'customTabBar');
                }, child: Text('tabBarwithCustomController')),

                TextButton(onPressed: () async {
                  date= await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2023),
                  );
                  setState(() {
                    selectedDate ='${date!.day}/${date!.month}/${date!.year}';
                    dateBool = true;
                  });
                }, child: dateBool?Text(selectedDate):const Text('DatePicker')
                ),

                TextButton(onPressed: () async {
                  time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now()
                  );
                  setState(() {
                    selectedTime ='${time!.hour}:${time!.minute} ${time!.periodOffset == 0 ? 'AM':'PM'}';
                    timeBool = true;
                  });
                }, child: timeBool?Text(selectedTime):const Text('TimePicker')
                ),

                TextButton(
                  onPressed: (){

                    Navigator.pushNamed(context, 'BottomSheetDemo');
                  },
                  child: Text('PersistentBottomSheet'),
                ),

                TextButton(
                  onPressed: (){

                    Navigator.pushNamed(context, 'ExpansionPanelList');
                  },
                  child: Text('ExpansionPanelList'),
                ),

                TextButton(
                  onPressed: (){

                    Navigator.pushNamed(context, 'AllChartsFlutter');
                  },
                  child: Text('AllChartsFlutter'),
                ),

                TextButton(
                  onPressed: (){

                    Navigator.pushNamed(context, 'PermissionHandlerWithoutCommonWidget');
                  },
                  child: Text('PermissionHandlerWithoutCommonWidget'),
                ),

                TextButton(
                  onPressed: (){

                    Navigator.pushNamed(context, 'FilterData');
                  },
                  child: Text('FilterData'),
                ),

                TextButton(
                  onPressed: (){

                    Navigator.pushNamed(context, 'SearchFilter');
                  },
                  child: Text('SearchFilter'),
                ),

                TextButton(
                  onPressed: (){

                    Navigator.pushNamed(context, 'sortableDataTable');
                  },
                  child: Text('sortableDataTable'),
                ),

                TextButton(
                  onPressed: (){

                    Navigator.pushNamed(context, 'ExpansionPanel');
                  },
                  child: Text('ExpansionPanel'),
                ),
              ],
            ),

          ),
        ],

      ),
    );
  }
}

