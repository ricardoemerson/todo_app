import 'dart:io';

import 'package:get/get.dart';

import '../../data/services/notification_service.dart';
import '../../data/services/theme_service.dart';

class HomeController extends GetxController {
  final ThemeService _themeService;
  final NotificationService _notificationService;

  HomeController({
    required ThemeService themeService,
    required NotificationService notificationService,
  })  : _themeService = themeService,
        _notificationService = notificationService;

  @override
  void onInit() {
    super.onInit();

    _notificationService.initializeNotification();

    if (Platform.isIOS) {
      _notificationService.requestIOSPermissions();
    }
  }

  @override
  void onClose() {}

  void toggleTheme() {
    _themeService.toggleTheme();

    _notificationService.displayNotification(
      title: 'Theme Changed',
      body: Get.isDarkMode ? 'Activated Light Theme' : 'Activated Dark Theme',
    );

    _notificationService.scheduledNotification();
  }
}
