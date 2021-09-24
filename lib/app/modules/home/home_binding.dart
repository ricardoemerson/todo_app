import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        themeService: Get.find(),
        notificationService: Get.find(),
      ),
    );
  }
}
