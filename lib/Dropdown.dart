import 'package:flutter/material.dart';

class DropdownButton6 extends StatefulWidget {
  const DropdownButton6({super.key});

  @override
  State<DropdownButton6> createState() => _DropdownButton6State();
}

class _DropdownButton6State extends State<DropdownButton6> {
  String selectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DropdownButton',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 96, 64),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: 200,
        child: DropdownButton<String>(
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: ['Orange', 'Apple', 'Mangoes', 'Grapes']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(value: value, child: Text(value));
          }).toList(),
        ),
      ),
    );
  }
}
