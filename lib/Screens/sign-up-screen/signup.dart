import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
    );
  }

  Center signupButtonToDashboard(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content:
                  Text("Sign up successful, taking you to your dashboard!")));
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
            builder: (context) {
              return const DashboardScreen();
            },
          ), (route) => false);
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
