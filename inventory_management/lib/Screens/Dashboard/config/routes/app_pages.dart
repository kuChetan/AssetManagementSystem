import 'package:flutter/foundation.dart';
import 'package:inventory_management/Screens/asset_tracking/AssetsTracking.dart';
import 'package:inventory_management/Screens/devices/devices.dart';
import 'package:inventory_management/Screens/login/login.dart';
import 'package:inventory_management/Screens/ticket.dart';

import '../../features/dashboard/views/screens/dashboard_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const dashboardPage = Routes.dashboard;
  static const loginPage = Routes.login;
  static const devicesScreen = Routes.devices;
  static const ticketScreen = Routes.raiseTicket;
  static const trackingScreen = Routes.assetsTracking;
  static final routes = [
    GetPage(
      name: _Paths.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => LoginScreen(),
      // binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.devices,
      page: () => DevicesScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.assetsTracking,
      page: () => AssetsTracking(),
      // binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.raiseTicket,
      page: () => TicketScreen(),
      // binding: DashboardBinding(),
    ),
  ];
}
