import 'package:flutter/material.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/drawer.dart';

class WithdrawalScreen extends StatefulWidget {
  const WithdrawalScreen({super.key});

  @override
  State<WithdrawalScreen> createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerScreen(),
      appBar: AppBar(
        elevation: 0,
        foregroundColor: const Color(0xff2b1330),
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
