import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar Widget'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.radio),
              ),
              Tab(
                icon: Icon(Icons.check_box),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
              Tab(
                icon: Icon(Icons.table_chart_sharp),
              ),
            ]),
          ),
          body: const TabBarView(children: [
            Center(
              child: RadioButtonWidget(),
            ),
            Center(
              child: checkBoxWidget(),
            ),
            Center(
              child: Text('Its a sunny here!!'),
            ),
            Center(
              child: DataTableWidget(),
            ),
          ]),
        ));
  }
}

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({Key? key}) : super(key: key);

  DataRow tableRow({String name = '', String MoNo = '', String Address = ''}) =>
      DataRow(cells: [
        DataCell(Text(name)),
        DataCell(Text(MoNo)),
        DataCell(Text(Address)),
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(
              decoration: BoxDecoration(
                  color: Colors.teal,
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 5.0)
                  ]),
              /*border: TableBorder(
              horizontalInside: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
              verticalInside: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
              bottom: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
              top: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),

            ),*/
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Contacts')),
                DataColumn(label: Text('Address')),
              ],
              rows: [
                tableRow(name: 'Sachin',MoNo: '7276487621',Address: 'At post wadwani'),
                tableRow(name: 'Tejshree',MoNo: '8888707388',Address: 'At post Pune'),
                tableRow(name: 'Madhuri',MoNo: '67565434343',Address: 'At post Nagpur'),
                tableRow(name: 'Rohan',MoNo: '7276487622',Address: 'At post Lonavala'),
                tableRow(name: 'Ramesh',MoNo: '7276487625',Address: 'At post Kolhapur'),
                tableRow(name: 'Raghav',MoNo: '7276487721',Address: 'At post Nanded'),
              ]),
        ),
      ),
    );
  }
}


class checkBoxWidget extends StatefulWidget {
  const checkBoxWidget({Key? key}) : super(key: key);

  @override
  State<checkBoxWidget> createState() => _checkBoxWidgetState();
}

class _checkBoxWidgetState extends State<checkBoxWidget> {
  
  bool male = false;
  bool female = false;
  bool other = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: male, onChanged: (value){
                  setState((){
                    male = !male;
                  });
                }),
                Text('male'),
                SizedBox(width: 5.0,),
                Checkbox(value: female, onChanged: (value){
                  setState((){
                    female = !female;
                  });
                }),
                Text('female'),
                SizedBox(width: 5.0,),
                Checkbox(value: other, onChanged: (value){
                  setState((){
                    other = !other;
                  });
                }),
                Text('other'),
              ],
            )
          ],
         
        ),
      );

  }
}

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}


class _RadioButtonWidgetState extends State<RadioButtonWidget> {

  String cricket = 'cricket';
  String baseBall = 'baseBall';
  String badminton = 'badminton';
  String tableTanis = 'tableTanis';
  String game = 'cricket';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Radio(
                  value: cricket,
                  groupValue: game,
                  onChanged: (value){
                    setState((){
                      game = value.toString();
                    });
                  }),
              Text('cricket'),
              SizedBox(width: 5.0,),
              Radio(
                  value: baseBall,
                  groupValue: game,
                  onChanged: (value){
                    setState((){
                      game = value.toString();
                    });
                  }),
              Text('baseBall'),
              SizedBox(width: 5.0,),
              Radio(
                  value: badminton,
                  groupValue: game,
                  onChanged: (value){
                    setState((){
                      game = value.toString();
                    });
                  }),
              Text('badminTon'),
              SizedBox(width: 5.0,),
              Radio(
                  value: tableTanis,
                  groupValue: game,
                  onChanged: (value){
                    setState((){
                      game = value.toString();
                    });
                  }),
              Text('tableTennis'),
            ],
          ),
        ],

      ),
    );
  }
}


