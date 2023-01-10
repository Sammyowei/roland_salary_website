import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';

class WithdrawalScreen extends StatefulWidget {
  const WithdrawalScreen({super.key});

  @override
  State<WithdrawalScreen> createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: const Color(0xff2b1330),
        backgroundColor: Colors.transparent,
            title: Text(
          "Withdraw funds",
          style: GoogleFonts.ptSans(
            fontWeight: FontWeight.bold,
            color: const Color(0xff2b1330),
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Column(
            children:const  [],
          ),
        ),
      ),
    );
  }
}
