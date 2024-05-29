import 'package:flutter/material.dart';

class DropDownButton5 extends StatefulWidget {
  const DropDownButton5({super.key});

  @override
  State<DropDownButton5> createState() => _DropDownButton5State();
}

class _DropDownButton5State extends State<DropDownButton5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text('Alert Dialog '),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                _showMyAlertDialog(context);
              },
              child: Text('Click me '))),
    );
  }
}

Future<void> _showMyAlertDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("This is Alert Box"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Hello this is Krishita Pandey'),
                Text('Would you accept this Alert dialog box or not?'),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Accept")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Deny"))
          ],
        );
      });
}
