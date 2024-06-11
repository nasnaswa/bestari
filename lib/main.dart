import 'package:bopat/config/asset.dart';
import 'package:bopat/screen/admin/home_screen.dart';
import 'package:bopat/screen/admin/dashboard_admin.dart';
import 'package:bopat/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Asset.colorPrimaryDark,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
