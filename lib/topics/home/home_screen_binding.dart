import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home_screen_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}