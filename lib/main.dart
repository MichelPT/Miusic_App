import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/models/hive_model.dart';
import 'package:music_app/pages/splash_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(SongsListAdapter());
  await Hive.openBox<SongsList>('songs');
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
            primarySwatch: MaterialColor(int.parse('925E78'), {}),
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
