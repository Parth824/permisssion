import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Permission"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.mic),
            ),
            onTap: () async {
              PermissionStatus mic = await Permission.microphone.request();
              if (mic == PermissionStatus.granted) {}
              if (mic == PermissionStatus.denied) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("This permission is recommende"),
                  ),
                );
              }
              if(mic == PermissionStatus.permanentlyDenied)
                {
                  openAppSettings();
                }
            },
            title: Text("Mic Permission"),
            subtitle: Text("Ststus of Permission: "),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.camera_alt),
            ),
            onTap: () async {
              PermissionStatus cma = await Permission.camera.request();
              if (cma == PermissionStatus.granted) {}
              if (cma == PermissionStatus.denied) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("This permission is recommende"),
                  ),
                );
              }
              if(cma == PermissionStatus.permanentlyDenied)
              {
                openAppSettings();
              }
            },
            title: Text("Camera Permission"),
            subtitle: Text("Ststus of Permission: "),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.location_on),
            ),
            onTap: () async {
              PermissionStatus cma = await Permission.location.request();
              if (cma == PermissionStatus.granted) {}
              if (cma == PermissionStatus.denied) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("This permission is recommende"),
                  ),
                );
              }
              if(cma == PermissionStatus.permanentlyDenied)
              {
                openAppSettings();
              }
            },
            title: Text("Location Permission"),
            subtitle: Text("Ststus of Permission: "),
          ),
        ],
      ),

    );
  }
}
