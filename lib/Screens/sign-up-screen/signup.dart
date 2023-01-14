import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/dashboard_screen.dart';
import 'package:roland_salary_website/Screens/Home-Screen/home_page.dart';
import 'package:roland_salary_website/Screens/Login-Screen/login_page.dart';
import 'package:roland_salary_website/widgets/text_fields.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _scrollController = ScrollController();
  @override
  void initState() {
    selectedDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: signupFormKey,
        child: SafeArea(
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                homeButton(context),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Image.asset(
                    "assets/images/imqge6.png",
                    height: 200,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Text(
                      "Welcome to smartpayy - Getting paid online just got better.  Sign up now to enjoy seamless transactions globally.",
                      style: GoogleFonts.ptSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2B1330).withOpacity(0.5),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  padding: EdgeInsets.zero,
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.ptSans(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2B1330),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "First Name",
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B1330),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: firstNameField(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "Last name",
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B1330),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: lastNameField(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "Email address",
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B1330),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: emailField(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "Date of birth",
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B1330),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onTap: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(1900, 8),
                        lastDate: DateTime(2101),
                      );
                      if (picked != null) {
                        setState(() {
                          selectedDate = picked;
                        });
                      }
                    },
                    controller:
                        TextEditingController(text: selectedDate.toString()),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "Username",
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B1330),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: userNameField(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "Phone Number",
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B1330),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: phoneNumberField()),
                const SizedBox(
                  height: 010,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "Country",
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B1330),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: countryField()),
                const SizedBox(
                  height: 010,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "Password",
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B1330),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: passwordField()),
                const SizedBox(
                  height: 010,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Text(
                    "Confirm password",
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B1330),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: confirmPasswordField()),
                const SizedBox(
                  height: 50,
                ),
                signupButtonToDashboard(context),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                      padding: const EdgeInsets.only(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already a member?",
                            style: GoogleFonts.ptSans(
                              color: const Color(0xFF2B1330),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                builder: (context) {
                                  return const LoginPage();
                                },
                              ), (route) => false);
                            },
                            child: Text(
                              "Log in ",
                              style: GoogleFonts.ptSans(
                                color: const Color(0xFF2B1330),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 70,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(),
                    child: Text(
                      "© All right reserved 2022",
                      style: GoogleFonts.ptSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.5)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Center signupButtonToDashboard(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () async {
          if (signupFormKey.currentState!.validate()) {
            showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 59,
                    width: MediaQuery.of(context).size.width / 1.5,
                    padding: EdgeInsets.zero,
                    child: Row(children: [
                      const CircularProgressIndicator(
                        color: Color(0xff2b1330),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Creating account...",
                        style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: const Color(0xff2b1330)),
                      )
                    ]),
                  ),
                );
              },
            );

            try {
              Future.delayed(
                const Duration(seconds: 0),
                () async {
                  await auth
                      .createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  )
                      .then((_) {
                    createUser();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const DashboardScreen(),
                        ),
                        (route) => false);

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(
                            "Your account has been created sucessfully..\nWelcome to smartpayy",
                            style: GoogleFonts.ptSans(
                              fontSize: 20,
                              color: const Color(0xff2b1330),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    );
                    Navigator.of(context).pop();
                  });
                },
              );
            } on FirebaseAuthException catch (error) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("${error.message}"),
                  );
                },
              ).then((value) {
                Future.delayed(
                  const Duration(seconds: 1),
                  () {
                    Navigator.of(context).pop();
                  },
                );
              });
            }
          }
        },
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width / 2.5,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF2B1330), width: 5),
              borderRadius: BorderRadius.circular(70)),
          child: Center(
              child: Text(
            "Sign up",
            style: GoogleFonts.ptSans(
                color: const Color(0xFF2B1330),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}

GestureDetector homeButton(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
        (route) => false),
    child: Container(
      padding: EdgeInsets.zero,
      height: 35,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Image.asset(
          "assets/images/image1.png",
          height: 150,
          width: 125,
        ),
      ),
    ),
  );
}
