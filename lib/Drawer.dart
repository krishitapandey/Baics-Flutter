import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(' Drawer  '),
      ),
      body: Center(
        child: Builder(builder: (BuildContext context) {
          return ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Text('click me to show Drawer'));
        }),
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.amber,
          child: ListView(
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("Header")),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text(
                  "My folder",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text(
                  "My folder",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text(
                  "My folder",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text(
                  "My folder",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text(
                  "My folder",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text(
                  "My folder",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
