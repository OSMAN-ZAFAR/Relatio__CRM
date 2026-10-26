// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:reltio/Theme/app_theme.dart';
import 'View/Intro_Page/splashscreen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: splashscreen(),
      theme: AppTheme.light,
    );
  }
}


