part of 'app_pages.dart';

/// used to switch pages
class Routes {
  static const dashboard = _Paths.dashboard;
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const devices  = _Paths.devices;
  static const assetsTracking = _Paths.assetsTracking;
  static const raiseTicket = _Paths.raiseTicket;
}

/// contains a list of route names.
// made separately to make it easier to manage route naming
class _Paths {
  static const dashboard = '/dashboard';
  static const splash = '/splashScreen';
  static const login = '/loginScreen';
  static const devices = '/devicesScreen';
  static const assetsTracking = '/assetsTracking';
  static const raiseTicket = '/raiseTicket';
  // Example :
  // static const index = '/';
  // static const splash = '/splash';
  // static const product = '/product';
}
