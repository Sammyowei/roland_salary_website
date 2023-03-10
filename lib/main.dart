import 'package:roland_salary_website/Admin-Panel/home_screen.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/dashboard_screen.dart';

import "firebase_options.dart";

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:roland_salary_website/Screens/Home-Screen/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smartpayy Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const DashboardScreen(),
    );
  }
}
