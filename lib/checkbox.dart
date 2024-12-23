import 'package:flutter/material.dart';

class Cat extends StatefulWidget {
  const Cat({super.key});

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  bool valueOne = false;
  bool valueTwo = false;
  bool mon = false;
  bool tues = false;
  bool wednes = false;
  bool showvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox"),
      backgroundColor: Colors.blueAccent,),
      body: Container(
        child: Column(
          children: [
            Text("  Privacy policy"),
            Checkbox(

              activeColor: Colors.green,
              value: this.valueOne,
              onChanged: (bool? value) {
                setState(() {
                  this.valueOne = value ?? false;
                  print(value);
                });
              },
            ),
            Text("Check "),
            Checkbox(
              activeColor: Colors.redAccent,
              value: this.valueTwo,
              onChanged: (bool? value) {
                setState(() {
                  this.valueTwo = value ?? false;
                  print(value);
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
            Checkbox(
              value: this.showvalue,
              onChanged: (bool? value) {
                setState(() {
                  this.showvalue = value?? false;
                });
              },
            ),
            Text("Checkbox without header and Subtitle: ",style: TextStyle(fontSize: 17.0),)

          ],
        ),
      ),
    );
  }
}