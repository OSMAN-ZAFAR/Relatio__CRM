// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:reltio/Widgets/BoldText.dart';
import 'package:reltio/Theme/colors.dart';
import 'package:reltio/Widgets/LightText.dart';

class CustomerLogin extends StatefulWidget {
  const CustomerLogin({super.key});

  @override
  State<CustomerLogin> createState() => _CustomerLoginState();
}

class _CustomerLoginState extends State<CustomerLogin> {

  bool isCustomer=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // ................logo container.....
          Padding(
            padding: const EdgeInsets.only(top: 100,left: 40),
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/logo.png")),
              borderRadius: BorderRadius.circular(10)
            
              ),
            ),
          ),
          SizedBox(height: 10,),
         
          // ................welcome back Text.....
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: BoldText(text: "Welcome Back",
            color: AppColor.navyDeep ,
            size: 30,
            ),
          ),
           SizedBox(height: 4,),
      
          // ................Role selection Text.....
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: BoldText(text: "Choose role to countinue",
            color: AppColor.textMuted ,
            size: 15,
            ),
          ),
          SizedBox(height: 14,),

          // ................Role selection Row.....
         
         Padding(
           padding: const EdgeInsets.only(left: 10),

           // outer container..................
           child: Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
            color: const Color.fromARGB(255, 222, 222, 221),
            borderRadius: BorderRadius.circular(15)
           
            ),
             child: Row(
              children: [

                // customer container.................
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCustomer=true;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                      color: isCustomer   // after selection color changing logic
                      ?AppColor.gold
                      :const Color.fromARGB(255, 166, 136, 62),
                      borderRadius: BorderRadius.circular(10)
                    
                      ),
                     child: Center(child: BoldText(text: "Customer",color: AppColor.navyDeep,size: 17,)),
                  
                    ),
                  ),
                ),
             
              // Admin container.................
                SizedBox(width: 14,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCustomer=false;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                    color: isCustomer
                     
                    ?const Color.fromARGB(255, 166, 136, 62)
                    : AppColor.gold,
                
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: BoldText(text: "Admin",color: AppColor.textMuted,size: 17,)),
                  ),
                )
              ],
             ),
           ),
         )

        
        
        
        ],
      ),
    );
  }
}