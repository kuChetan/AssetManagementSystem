import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:inventory_management/Provider/DeviceProvider.dart';
import 'package:inventory_management/Screens/Dashboard/config/routes/app_pages.dart';
import 'package:inventory_management/Screens/Dashboard/config/themes/app_theme.dart';
import 'package:inventory_management/Screens/Dashboard/features/dashboard/views/screens/dashboard_screen.dart';
import 'package:inventory_management/Screens/devices/devices.dart';
import 'package:inventory_management/Screens/login/login.dart';
import 'package:inventory_management/Screens/login/signup.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Device Manager',
//       theme: ThemeData(
//         primaryColor: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//         textTheme: TextTheme(
//           headline6: TextStyle(
//             fontSize: 28.0,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent),
//       ),
//       home: SplashScreen(), // Set SplashScreen as the initial route
//       routes: {
//         '/home': (context) => HomePage(),
//         '/login': (context) => LoginScreen(),
//         '/dashboard':(context) => DashboardScreen(),
//        // Define routes for other screens
//       },
//     ); 
//   }
// }

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Simulate loading process using Future.delayed
//     Future.delayed(Duration(seconds: 3), () {
//       // Navigate to home screen after loading is complete
//       Navigator.pushReplacementNamed(context, '/login');
//     });

//     return Scaffold(
//       backgroundColor: Colors.blue, // Background color of splash screen
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Your logo or app icon could be placed here
//             Text(
//               'Device Manager',
//               style: TextStyle(
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             CircularProgressIndicator(
//               color: Colors.white, // Color of the loading indicator
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Home screen widget
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: Text('Welcome to Device Manager!'),
//       ),
//     );
//   }
// }
// class CustomScrollBehaviour extends MaterialScrollBehavior {
//   @override
//   Set<PointerDeviceKind> get dragDevices => {
//         PointerDeviceKind.touch,
//         PointerDeviceKind.mouse,
//       };
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DeviceProvider(),
      child: GetMaterialApp(
        title: 'Device Manager',
        theme: AppTheme.basic,
        initialRoute: AppPages.loginPage,
        getPages: AppPages.routes,
        scrollBehavior: CustomScrollBehaviour(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class CustomScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}