// ignore_for_file: avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:reltio/Theme/colors.dart';
import 'package:reltio/Widgets/Text%20widget/BoldText.dart';
import 'package:reltio/Widgets/Text%20widget/LightText.dart';

class Adminloginform extends StatefulWidget {
  const Adminloginform({super.key});

  @override
  State<Adminloginform> createState() => _AdminloginformState();
}

class _AdminloginformState extends State<Adminloginform> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Email Input Field................
          BoldText(text: "Email",color: AppColor.navyDeep,size: 15,),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.white,

            hintText: "adminname@gmail.com",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColor.error)  
            ),


          ),
          ), 
         SizedBox(height: 10,),
         
         
          // password Input Field................
          BoldText(text: "Password",color: AppColor.navyDeep,size: 15,),
          SizedBox(height: 7,),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.white,

            hintText: "Enter Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColor.error)  
            ),


          ),
          ),
          SizedBox(height: 30,),

          // Login Button.....

          GestureDetector(
            onTap: () {
              setState(() {
                print("Login is working");
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 60,
                width: 350,
                
                decoration: BoxDecoration(
                color: AppColor.navyDeep,
                borderRadius: BorderRadius.circular(20),
            
                ),
                child: Center(child: BoldText(text: "Log in",color: AppColor.white,)),
                
              ),
            ),
          ),
         SizedBox(height: 30,),

         
        
        ],
      ),
    );
  }
}