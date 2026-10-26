// ignore_for_file: unused_field, unused_import

import 'package:flutter/material.dart';

class AppColor{

  AppColor._(); // it is a technique to achive the encapsulation in the dart, it prevent anyother library to , change these colors, however we used these colors in any library,


// Brand Colors:
   static const Color navy= Color(0xFF0B1F45) ;

   // static: means use anywhere, const: means without changing,
  //  static const: means use class variable anywhere in your poject,without changing,
  
   static const Color navyDeep = Color(0xFF06142F) ;
   static const Color white = Color(0xFFFFFFFF) ;
   static const Color gold = Color(0xFFE7B642) ;
   static const Color goldSoft = Color(0xFFFFF2CC) ;

// Surface and text colors:

  static const Color background=Color(0xFFF5F7FB);
  static const Color textMain =Color(0xFF172033);
  static const Color textMuted =Color(0xFF667085);
  static const Color border =Color(0xFFE1E6EF);

  // Semantic
  static const Color success = Color(0xFF21845A);
  static const Color warning = Color(0xFFB7791F);
  static const Color error = Color(0xFFC33D4B);
  static const Color info = Color(0xFF2F6DB3);
}