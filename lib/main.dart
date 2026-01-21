import 'package:flutter/material.dart';
import 'package:foodball_kit/articledetail.dart';
import 'package:foodball_kit/explore.dart';
import 'package:foodball_kit/home.dart';
import 'package:foodball_kit/navebar.dart';
import 'package:foodball_kit/profile.dart';
import 'package:foodball_kit/screen.dart';
import 'package:foodball_kit/screen2.dart';
import 'package:foodball_kit/screen3.dart';
import 'package:foodball_kit/searchscreen.dart';
import 'package:foodball_kit/standingdetail.dart';
import 'package:foodball_kit/standingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
         
      home: Screen()

    );
  }
}

