import 'package:flutter/material.dart';
import 'package:untitled_1/sample_project/Doc/AboutUs.dart';
import 'package:untitled_1/sample_project/Doc/ForgotPass.dart';
import 'package:untitled_1/sample_project/Pat/PatEdit.dart';
import 'package:untitled_1/sample_project/Pat/PatHomepg.dart';
import 'package:untitled_1/sample_project/Pat/PatProfile.dart';
import 'package:untitled_1/sample_project/Pat/TopDocs.dart';
import 'package:untitled_1/sample_project/SplashScreen.dart';
import 'package:untitled_1/sample_project/Doc/editprofile.dart';
import 'package:untitled_1/sample_project/firstpg.dart';
import 'package:untitled_1/sample_project/Doc/dochomepg.dart';
import 'package:untitled_1/sample_project/testt.dart';
import 'package:untitled_1/sample_project/Doc/logindoc.dart';
import 'package:untitled_1/sample_project/Pat/loginpat.dart';
import 'package:untitled_1/sample_project/Doc/passwordchange.dart';
import 'package:untitled_1/sample_project/Doc/profilepg.dart';
import 'package:untitled_1/sample_project/Doc/regdoc.dart';
import 'package:untitled_1/sample_project/Doc/specialization.dart';
import 'package:untitled_1/sample_project/test.dart';
import 'package:untitled_1/splashscreen.dart';

import 'alert.dart';


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
      home:Splash(),
    );
  }
}

