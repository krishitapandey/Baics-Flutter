import 'package:flutter/material.dart';

class DropDownButton3 extends StatefulWidget {
  const DropDownButton3({super.key});

  @override
  State<DropDownButton3> createState() => _DropDownButton3State();
}

class _DropDownButton3State extends State<DropDownButton3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: Text(' Bottomsheet '),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Colors.green,
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              "Apple",
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              'Favourite',
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Grapes",
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text('Favourite'),
                          ),
                          ListTile(
                            title: Text(
                              "Mangoes",
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text('Favourite'),
                          ),
                          ListTile(
                            title: Text(
                              "Banana",
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text('Favourite'),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text('click me ')),
      ),
    );
  }
}
