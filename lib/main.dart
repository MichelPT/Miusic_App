import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/pages/home_screen.dart';
import 'package:music_app/pages/splash_screen.dart';
import 'package:music_app/pages/user_input_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
