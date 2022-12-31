import 'package:flutter/material.dart';
import 'package:roland_salary_website/Screens/Login-Screen/widgets/user_card_details.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(height: 60,width: 70,
    color: Colors. green,
    child: const MyUserCard(),),
    );
  }
}