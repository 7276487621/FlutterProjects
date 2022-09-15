import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APIDemo extends StatefulWidget {
  const APIDemo({Key? key}) : super(key: key);

  @override
  State<APIDemo> createState() => _APIDemoState();
}

class _APIDemoState extends State<APIDemo> {
  // @override
  // void initState() {
  //   super.initState();
  //   getDataFromApi();
  // }

/*  List data = [];
  getDataFromApi(){
    http.get(Uri.parse('https://reqres.in/api/users?page=2')).then((value){
      Map temp = jsonDecode(value.body) as Map;
      data = temp['data'];
    setState(() {});

    });
  }*/

  Future<List> getDataFromApi() async {
    http.Response response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    Map temp = jsonDecode(response.body) as Map;
    return temp['data'];
  }

  @override
  Widget build(BuildContext context) {
    postApiDemo();
    return Scaffold(
/*      body: ListView.builder(
        itemCount: data.length,
          itemBuilder: (context,index)=>ListTile(
            title: Text(data[index]['first_name'] + ' '+ data[index]['last_name']),
            subtitle: Text(data[index]['email']),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(data[index]['avatar']),
            ),
             trailing: Text(data[index]['id'].toString()),
          ),
      ),*/

      ///Future Builder
      body: FutureBuilder<List>(
        initialData: [],
        future: getDataFromApi(),
        builder: (context, snapshot) => ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(snapshot.data![index]['first_name'] +
                ' ' +
                snapshot.data![index]['last_name']),
            subtitle: Text(snapshot.data![index]['email']),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(snapshot.data![index]['avatar']),
            ),
            trailing: Text(snapshot.data![index]['id'].toString()),
          ),
        ),
      ),
    );
  }
}


postApiDemo() async {
   await http.post(Uri.parse('https://reqres.in/api/users'),
     body: {
       "name": "morpheus",
       "job": "leader"
     }
   ).then((value){
     print('*****${value.body}');
   });
}
