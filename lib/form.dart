import 'package:flutter/material.dart';
class World extends StatelessWidget {
  const World ({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = ' '
        ' '
        ' ';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomerForm(),
      ),
    );
  }
}
class MyCustomerForm extends StatelessWidget {
  const MyCustomerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Mobile Number',

            ),
          ),
        ),
      ],
    );

  }
}