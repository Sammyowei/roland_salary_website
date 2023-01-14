import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';

final withdrawalGlobalKey = GlobalKey<FormState>();

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
        key: withdrawalGlobalKey,
        child: Form(
          child: SafeArea(
            child: Column(
              children: const [],
            ),
          ),
        ),
      ),
    );
  }
}


final bankNamecontroller =  TextEditingController();


TextFormField bankName() {
  return TextFormField(
    controller:bankNamecontroller,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your user name";
      } else if (!value.contains(RegExp(r"^[A-Za-z0-9.!#$%&'*+/=?^_`{|}~-]"))) {
        return "username must be lowercase ";
      }
      return null;
    },
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          color: Color(0XFF2B1347),
        ),
      ),
      hintText: "Username",
      alignLabelWithHint: true,
      fillColor: const Color(0xff2B1347),
    ),
  );
}
