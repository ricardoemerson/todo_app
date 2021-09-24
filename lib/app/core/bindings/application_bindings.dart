import 'package:get/get.dart';

import '../../data/services/notification_service.dart';
import '../../data/services/theme_service.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeService());

    Get.lazyPut<NotificationService>(() => NotificationService());
  }
}
