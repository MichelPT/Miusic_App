import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:miusic_app/pages/user_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();

    Future.delayed(Duration(seconds: 3), (() => {Get.off(()=>UserPage())}));
  }
}
