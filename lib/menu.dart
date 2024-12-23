import 'package:flutter/material.dart';

class Namith extends StatefulWidget {
  const Namith({super.key});

  @override
  State<Namith> createState() => _NamithState();
}

class _NamithState extends State<Namith> {
  String _selectedValue = 'Nothing selected';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
        actions: [
          PopupMenuButton(
              onSelected: (String value) {
                setState(() {
                  _selectedValue = value;
                });
              },
              itemBuilder: (BuildContext ctx) => [
                const PopupMenuItem(value: '1', child: Text('Option 1')),
                const PopupMenuItem(value: '2', child: Text('Option 2')),
                const PopupMenuItem(value: '3', child: Text('Option 3')),
                const PopupMenuItem(value: '4', child: Text('Option 4')),
              ])
        ],
      ),
      body: Center(

        child: Text(_selectedValue,
            style: const TextStyle(
              fontSize: 24,
            )),
      ),
    );
  }
}
