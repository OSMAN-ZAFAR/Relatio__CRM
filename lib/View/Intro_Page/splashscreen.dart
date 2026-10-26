// ignore_for_file: unused_field, avoid_unnecessary_containers, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:reltio/Theme/colors.dart';
import 'package:reltio/Widgets/BoldText.dart';
import 'package:reltio/Widgets/LightText.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen>
 
with SingleTickerProviderStateMixin {
 //  Every time it ticks,it tells your animation: "Hey, move a tinybit further!".  

 late AnimationController _controller;  // controle the animation's progress overthime
 
 late Animation<double> _logoScale;  //  change the logo size slowly
 
 late Animation<double> _logoFade;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(),
          // ................Off white Circle container.....
          Padding(
            padding: const EdgeInsets.only( left: 300),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: AppColor.goldSoft,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                  bottomLeft: Radius.circular(150),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),

          // ................Middle container.....
          Container(
            child: Column(
              children: [

          // ................logo container.....

                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),                
                SizedBox(height: 10,),

          // ................Relatio Text.....
                 Text(
                  'Relatio',
                  style: TextStyle(
                    color: AppColor.navy,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(height: 10),
  
          // ................line container.....
                Container(
                  height: 5,
                  width: 50,
                  color: AppColor.gold,
                ),
                 SizedBox(height: 20),

          // ................Tag line Text.....
                BoldText(
                  text: "Building Better",
                  color: const Color.fromARGB(255, 127, 127, 128),
                  size: 15,     
                  ),
                BoldText(
              text: "Customer Relationships",
              color: AppColor.navyDeep,)
              ],
            ),
          ),
          SizedBox(height: 7),

          // ................deep Navy Circle container.....
        Padding(
            padding: const EdgeInsets.only( right: 300),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: AppColor.border,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(150),
                  bottomRight: Radius.circular(150),
                ),
              ),
            ),
          ),
        
        
         // ................Loading container.....
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Container(
                    height: 6,
                    width: 200,
                    color: AppColor.gold,
                  ),
                ),
          
          ],
      ),
    );
  }
}
