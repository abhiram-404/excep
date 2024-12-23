import 'package:flutter/material.dart';

class Hash extends StatelessWidget {
  const Hash ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body:  ElevatedButton(
          onPressed:(){ print("ElevatedButton clicked");
          },child:Text("click me"),
        ),
    );
  }
}
