import 'dart:developer';

import "dart:io";

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/dashboard_screen.dart';
import 'package:roland_salary_website/Screens/Home-Screen/home_page.dart';
import 'package:roland_salary_website/Screens/sign-up-screen/signup.dart';
import 'package:roland_salary_website/widgets/text_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _scrollController = ScrollController();
  @override
  void initState() {
    emailController.clear();
    passwordController.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: loginFormKey,
        child: SafeArea(
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                homeButton(context),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  padding: EdgeInsets.zero,
                  child: Center(
                    child: Text(
                      "Login",
                      style: GoogleFonts.ptSans(
                        fontSize: 55,
                        color: const Color(0xFF2B1347),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Text(
                      "Welcome Back!, please sign in with your credendials",
                      style: GoogleFonts.ptSans(
                          fontSize: 20,
                          color: const Color(0xFF2B1347),
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    " Email address",
                    style: GoogleFonts.ptSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2B1347)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: emailField(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    " Password",
                    style: GoogleFonts.ptSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2B1347)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: passwordField(),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        // onTap: () async {
                        //  showDialog(context: context, builder: (context) {
                        //    return AlertDialog(
                        //     content: Text(""),
                        //    );
                        //  },);
                        // },
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.ptSans(
                              color: const Color(0xFF2B1347), fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () async {
                      if (loginFormKey.currentState!.validate()) {
                        try {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 50,
                                    right: 50,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3.0,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.zero,
                                    child: Center(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          const CircularProgressIndicator(
                                            color: Color(0xff2b1330),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            "Logging in..",
                                            style: GoogleFonts.ptSans(
                                              color: const Color(0xff2b1330),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );

                          Future.delayed(
                            const Duration(seconds: 0),
                            () async {
                              try {
                                await FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailController.text.trim(),
                                        password:
                                            passwordController.text.trim())
                                    .then((value) {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return const DashboardScreen();
                                    },
                                  ), (route) => false);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Log in sucessful"),
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
                                });

                                emailController.clear();
                                passwordController.clear();
                                log(auth.currentUser!.uid);
                              } on FirebaseAuthException catch (error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("${error.message}"),
                                  ),
                                );
                                log(error.toString());
                                Navigator.of(context).pop();
                                log(auth.currentUser!.uid);
                              }
                            },
                          );
                        } on FirebaseAuthException catch (error) {
                          log(error.toString());
                        }
                      }
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                          color: const Color(
                            0xFF2B1347,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Log in",
                          style: GoogleFonts.ptSans(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  color: Colors.transparent,
                  height: 20,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not a member?",
                          style: GoogleFonts.ptSans(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        createAccountButton()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector createAccountButton() {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: ((context) => const SignUpPage()),
          ),
          (route) => false),
      child: Text(
        "Create Account",
        style: GoogleFonts.ptSans(
            color: const Color(0xFF2B1347),
            fontSize: 16,
            fontWeight: FontWeight.w600),
      ),
    );
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
}
