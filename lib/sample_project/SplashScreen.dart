import 'dart:async';
import 'package:flutter/material.dart';

import 'firstpg.dart';


class Splash extends StatefulWidget {
  const Splash ({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
    super.initState();
    _navigatorHome();
  }


  _navigatorHome(){
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstPg()));
    },);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
          child: Container(
            child: Image.asset('asset/psy.png')
            ,
          )
      ),
    );
  }
}