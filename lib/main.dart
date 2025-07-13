import 'package:diversify/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
        
    return GetMaterialApp(
      title: 'Diversify',
      debugShowCheckedModeBanner: false
    return MaterialApp(
      title: 'Diversify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Satoshi',
      ),
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
    );
  }
}