import 'package:flutter/material.dart';
import 'package:untitled_1/sample_project/SplashScreen.dart';
import 'package:untitled_1/sample_project/firstpg.dart';
import 'package:untitled_1/sample_project/testt.dart';
import 'package:untitled_1/sample_project/Pat/loginpat.dart';
import 'package:untitled_1/sample_project/test.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:PatHomePg(),
    );
  }
}

