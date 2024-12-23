import 'package:flutter/material.dart';

class Ebin extends StatefulWidget {
  const Ebin({super.key});

  @override
  State<Ebin> createState() => _EbinState();
}

class _EbinState extends State<Ebin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WHO IS THIS PUNDACHI'),),
      body: Center(
       child: Container(
         child: Image.asset('asset/anjith_monn.png'),
       ),
      ),
    );
  }
}
