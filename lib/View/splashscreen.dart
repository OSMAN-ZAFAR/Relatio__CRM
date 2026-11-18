
// ignore_for_file: unused_field, avoid_unnecessary_containers, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:reltio/Theme/colors.dart';
import 'package:reltio/View/Authentication%20screens/customer_login.dart';
import 'package:reltio/Widgets/Text%20widget/BoldText.dart';
import 'package:reltio/Widgets/Text%20widget/LightText.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen>
    with SingleTickerProviderStateMixin { // "with" introduced the mixin => Show details on Notes.  

  late AnimationController _controller; // AnimationController to controll the animations.

  late Animation<double> _logoScale;   // It control the size of logo within animation.
  late Animation<double> _logoFade;   // It control the  opacity of the logo within animation.

  late Animation<Offset> _titleSlide; // Offset represents a two-dimensional horizontal and vertical
  late Animation<double> _titleFade;  // It control the  opacity of the Relatio within animation.

  late Animation<double> _lineWidth;  

  late Animation<Offset> _taglineSlide;
  late Animation<double> _taglineFade;

  late Animation<double> _loadingWidth;

  @override
  void initState() {
    super.initState();

    // Main animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
      // duration of the animations
    );

    // 1. Logo animation:
     
    _logoScale = Tween<double>(
      begin: 0.6,
      // by changing these value you can change the animation also
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          0.28,
          curve: Curves.easeOutBack,
        ),
      ),
    );

    _logoFade = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          0.28,
          curve: Curves.easeIn,
        ),
      ),
    );

    // 2. Relatio animation:
    // 
    _titleSlide = Tween<Offset>(
      begin: const Offset(0, 0.15),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.14,
          0.38,
          curve: Curves.easeOut,
        ),
      ),
    );

    _titleFade = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.14,
          0.38,
          curve: Curves.easeIn,
        ),
      ),
    );

    // 3. First gold line:
    _lineWidth = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.28,
         0.48,
          curve: Curves.easeOut,
        ),
      ),
    );

    // 4. Tagline: 
    _taglineSlide = Tween<Offset>(
      begin: const Offset(0, 0.15),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.36,
          0.60,
          curve: Curves.easeOut,
        ),
      ),
    );

    _taglineFade = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.36,
          0.60,
          curve: Curves.easeIn,
        ),
      ),
    );

    // 5. Last gold container: 
    _loadingWidth = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.80,
          1.0,
          curve: Curves.easeInOut,
        ),
      ),
    );

   _controller.forward().then((_) {
  if (!mounted) return;

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const CustomerLogin(),
    ),
  );
});
    
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(),

          // ................Off white Circle container.....
          Padding(
            padding: const EdgeInsets.only(left: 300),
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
                FadeTransition(
                  opacity: _logoFade,
                  child: ScaleTransition(
                    scale: _logoScale,
                    child: Container(
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
                  ),
                ),

                SizedBox(height: 10),

                // ................Relatio Text.....
                SlideTransition(
                  position: _titleSlide,
                  child: FadeTransition(
                    opacity: _titleFade,
                    child: Text(
                      'Relatio',
                      style: TextStyle(
                        color: AppColor.navy,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // ................line container.....
                AnimatedBuilder(
                  animation: _lineWidth,
                  builder: (context, child) {
                    return Transform(
                      alignment: Alignment.centerLeft,
                      transform: Matrix4.identity()
                        ..scale(_lineWidth.value, 1.0),
                      child: child,
                    );
                  },
                  child: Container(
                    height: 5,
                    width: 50,
                    color: AppColor.gold,
                  ),
                ),

                SizedBox(height: 20),

                // ................Tag line Text.....
                SlideTransition(
                  position: _taglineSlide,
                  child: FadeTransition(
                    opacity: _taglineFade,
                    child: Column(
                      children: [
                        BoldText(
                          text: "Building Better",
                          color: const Color.fromARGB(255, 127, 127, 128),
                          size: 15,
                        ),
                        BoldText(
                          text: "Customer Relationships",
                          color: AppColor.navyDeep,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 7),

          // ................deep Navy Circle container.....
          Padding(
            padding: const EdgeInsets.only(right: 300),
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
            padding: const EdgeInsets.only(bottom: 7,left: 120),
            child: AnimatedBuilder(
              animation: _loadingWidth,
              builder: (context, child) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 6,
                    width: 200 * _loadingWidth.value,
                    color: AppColor.gold,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
