import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miusic_app/controller/splash_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Miusic App',
                style: GoogleFonts.amaticSc(color: Colors.blue, fontSize: 70)),
            Image.asset(
              'assets/img/splash.png',
              height: 35.h,
            ),
          ],
        ),
      ),
    );
  }
}
