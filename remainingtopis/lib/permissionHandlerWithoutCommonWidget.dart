
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerWithoutCommonWidget extends StatefulWidget {
  const PermissionHandlerWithoutCommonWidget({Key? key}) : super(key: key);

  @override
  State<PermissionHandlerWithoutCommonWidget> createState() => _PermissionHandlerWithoutCommonWidgetState();
}

class _PermissionHandlerWithoutCommonWidgetState extends State<PermissionHandlerWithoutCommonWidget> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blueAccent,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Permissions'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
          ListTile(
          leading:  CircleAvatar(
          child: Icon(Icons.mic),
        ),
        onTap: () async {

            PermissionStatus microphoneStatus = await Permission.microphone.request();

          if(microphoneStatus == PermissionStatus.granted){
            //To do to fulfill the users need
          }
          if(microphoneStatus == PermissionStatus.denied){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: const Text('This Permission is recommanded')),
            );
          }
          if(microphoneStatus == PermissionStatus.permanentlyDenied){
            openAppSettings();
          }

        },
        title:  Text('Mic Permission'),
        subtitle: Text('Status of Permission'),
      ),

              ListTile(
                leading:  CircleAvatar(
                  child: Icon(Icons.camera_alt),
                ),
                onTap: () async {

                  PermissionStatus cameraStatus = await Permission.camera.request();

                  if(cameraStatus == PermissionStatus.granted){
                    //To do to fulfill the users need
                  }
                  if(cameraStatus == PermissionStatus.denied){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: const Text('You need to provide Camera permission')),
                    );
                  }
                  if(cameraStatus == PermissionStatus.permanentlyDenied){
                    openAppSettings();
                  }

                },
                title:  Text('Camera Permission'),
                subtitle: Text('Status of Permission'),
              ),



              ListTile(
                leading:  CircleAvatar(
                  child: Icon(Icons.folder),
                ),
                onTap: () async {

                PermissionStatus storageStatus = await Permission.storage.request();
                  if(storageStatus == PermissionStatus.granted){
                    //To do to fulfill the users need
                  }
                  if(storageStatus == PermissionStatus.denied){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: const Text('You need to provide Storage permission')),
                    );
                  }
                  if(storageStatus == PermissionStatus.permanentlyDenied){
                    openAppSettings();
                  }
                },
                title:  Text('Storage Permission'),
                subtitle: Text('Status of Permission'),
              ),

              ListTile(
                leading:  CircleAvatar(
                  child: Icon(Icons.phone),
                ),
                onTap: () async {

                  PermissionStatus contactStatus = await Permission.contacts
                      .request();

                  if(contactStatus == PermissionStatus.granted){
                    //To do to fulfill the users need
                  }
                  if(contactStatus == PermissionStatus.denied){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: const Text('You need to provide Bluetooth permission')),
                    );
                  }
                  if(contactStatus == PermissionStatus.permanentlyDenied){
                    openAppSettings();
                  }

                },
                title:  Text('Contacts Permission'),
                subtitle: Text('Status of Permission'),
              ),

              ListTile(
                leading:  CircleAvatar(
                  child: Icon(Icons.grid_view_sharp),
                ),
                onTap: () async {

                   Map<Permission, PermissionStatus> status = await [
                    Permission.microphone,
                    Permission.camera,
                    Permission.storage,
                     Permission.contacts,
                  ].request();

                   debugPrint(status.toString());
                },
                title:  Text('All Permission'),
                subtitle: Text('Status of Permission'),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
