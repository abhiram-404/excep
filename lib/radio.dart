import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  String? gender;
  bool mon = false;
  bool tues = false;
  bool wednes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Checkbox'),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            Text("Gender"),
            // Divider(),
            RadioListTile(
              title: Text('Male'),
              value: "Male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("female"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Others"),
              value: "Other",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),

            Text("Monday"),
            Checkbox(
              value: mon,
              onChanged: (bool? value) {
                setState(() {
                  mon = value?? false;
                });
              },
            ),
            Text("Tuesday"),
            Checkbox(
              value: tues,
              onChanged: (bool? value) {
                setState(() {
                  tues = value?? false;
                });
              },
            ),
            Text("Wednesday"),
            Checkbox(
              value: wednes,
              onChanged: (bool? value) {
                setState(() {
                  wednes = value?? false;
                });
              },
            ),

          ],
        ));
  }
}