import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/body.dart';

void main() {
  runApp(const Lab06AdvanceUI());
}

class Lab06AdvanceUI extends StatelessWidget {
  const Lab06AdvanceUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Advance Flutter UI",
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.settings,
                      size: 25,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.access_alarm_sharp,
                      size: 25,
                      color: Colors.blueAccent,
                    )
                  ],
                )),
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text("Images"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {},
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("ADvance UI"),
          ),
          body: AppaBody(),
        ));
  }
}
