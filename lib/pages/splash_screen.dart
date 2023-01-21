import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/pages/user_input_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(()=>const UserPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to my app',
                style: TextStyle(
                    fontFamily: 'Amethysta',
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10,),
            Image.asset(
              'assets/img/splash.png',
              height: 35.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            const CircularProgressIndicator()
          ],
        ),
      ],
    ));
  }
}
