import 'package:flutter/material.dart';
import 'package:projec/Screens/whats_up/whatsappdetail.dart';
import 'package:projec/Screens/whats_up/whatup_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';


class WhatsUp extends StatelessWidget {
   WhatsUp({Key? key}) : super(key: key);

  DateTime dateNow = DateTime.now();
   GlobalKey<ScaffoldState> _key =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    String date = '${dateNow.day}/${dateNow.month}/${dateNow.year}';
    return Scaffold(
      key: _key,
        endDrawer: Drawer(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
      appBar: AppBar(
        backgroundColor: Color(0XFF075E54),
        title: Text('WhatsApp'),
        actions: [
          iconButton(icon: Icons.search,onTap: (){}),
          iconButton(icon: Icons.message,onTap: (){}),
          iconButton(icon: Icons.logout,onTap: () async {
            SharedPreferences pref = await SharedPreferences.getInstance();
            pref.clear();
           // _key.currentState!.openEndDrawer();
          }),
        ],
        bottom: PreferredSize(
          preferredSize: Size(0,50),
          child: Container(
            height: 50.0,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                labels('Calls'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: labels('Chats'),
                ),
                labels('Contacts'),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.message),
        mini: true,
        backgroundColor: Color(0XFF128C7E),
      ),

      body: ListView.separated(

          itemCount: data.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> WatsappDetail()));
                // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>WatsappDetail(label:data[index]['title'],msg:data[index]['subtitle'],)));
                Navigator.pushNamed(context, 'watsappDetail',arguments: {
                  'label':data[index]['title'],
                  'msg':data[index]['subtitle'],
                });
              },
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(data[index]['image']),
              // child: Image.network('https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/05/Whatsapp-Profile-Images-pictutres-hd.gif',fit: BoxFit.cover),
            ),
              title: Text(data[index]['title'],
              overflow: TextOverflow.ellipsis,),
              subtitle: Text(
                // 'Bhavani'.toString(),
               data[index]['subtitle'],
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              trailing: Text(data[index]['date'].toString(),style: const TextStyle(
                fontSize: 12.0,
              ),
              ),
            );
          },
          separatorBuilder: (context, index)=>
        const Divider(
          thickness: 1,
          height: 2,
        ),
      ),
    );
  }

}

