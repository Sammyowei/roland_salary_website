import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

import 'package:roland_salary_website/Screens/Login-Screen/login_page.dart';
import 'package:roland_salary_website/util/responsive_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidgets(
      mobile: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              webAppBar(),
              Expanded(
                  child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset("assets/images/image2.png"),
                    ),
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    AnimatedContainer(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      duration: const Duration(seconds: 5),
                      curve: Curves.bounceInOut,
                      child: Text(
                        "Pay online and Recieve money without relying on your bank",
                        style: GoogleFonts.ptSans(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2B1340),
                          fontSize: 40,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Instantly move money between sites",
                      style: GoogleFonts.ptSans(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF2B1330)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Withdraw to your bank in seconds",
                      style: GoogleFonts.ptSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2B1330),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Used by millions around the world",
                      style: GoogleFonts.ptSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2B1330),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    signUpButton(context),
                    const SizedBox(
                      height: 40,
                    ),
                    const Divider(
                      height: 10,
                      color: Color(0xFF2B1330),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            child: Text(
                              "How you benefit",
                              style: GoogleFonts.ptSans(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF2B1330),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "1. Transfer money at Lightning speed",
                        style: GoogleFonts.ptSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF2B1330),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        padding: EdgeInsets.zero,
                        child: Text(
                          """Move your money globally in 40 different 
currencies. All you need is an email address 
and the fund arrive right away.""",
                          style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF2B1330),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Image.asset("assets/images/image3.png"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "2. Global",
                            style: GoogleFonts.ptSans(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF2B1330),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        padding: EdgeInsets.zero,
                        child: Text(
                          """Recieve payments from anywhere across the globe.""",
                          style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF2B1330),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset("assets/images/image4.png"),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "3. Instant",
                            style: GoogleFonts.ptSans(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF2B1330),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        padding: EdgeInsets.zero,
                        child: Text(
                          """Make Secure, fast online payments and withdrawals with only your smartpayy credentials.""",
                          style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF2B1330),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset("assets/images/wallet2.png"),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          getStartedButton(context),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Divider(
                      color: Color(0xFF2B1330),
                      height: 10,
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Text(
                        "Get paid online, with confidence",
                        style: GoogleFonts.ptSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF2B1330),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Container(
                        padding: EdgeInsets.zero,
                        child: Text(
                          """Choose the convinience of Smartpayy payment services, recieving payments online, and easy withdrawal of different currencies to your local bank just got easier, faster, and safer. To recieve payments or make withdrawals it is not necessary to provide the codes of your bank accounts or credit cards at the point of payment, the only thing you need is your email adderess and your smarypayy password""",
                          style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF2B1330),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    getStartedButton(context),
                    const SizedBox(
                      height: 100,
                    ),
                    const Divider(
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "Smarrtpayy platform is at your service with it's user friendly features, secure infastructure and applications that makes a difference.",
                        style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF2B1330).withOpacity(0.6)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "© All right reserved 2022",
                        style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF2B1330).withOpacity(0.8)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "smartpayy- the easiest place to recieve funds online.",
                        style: GoogleFonts.ptSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF2B1330).withOpacity(0.8)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector signUpButton(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width / 2.6,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF2B1330),
        ),
        child: Center(
          child: Text(
            "Sign up now",
            style: GoogleFonts.ptSans(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector getStartedButton(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 2.7,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF2B1330),
        ),
        child: Center(
          child: Text(
            "Get started",
            style: GoogleFonts.ptSans(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Container webAppBar() {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black26, offset: Offset(0, 2), blurRadius: 6.0)
      ]),
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Container(
              padding: EdgeInsets.zero,
              height: 50,
              child: const Image(
                fit: BoxFit.contain,
                image: AssetImage("assets/images/image1.png"),
              ),
            ),
          ),
          Row(
            children: [
              loginButton(),
              const SizedBox(
                width: 15,
              ),
              registerButton()
            ],
          )
        ],
      ),
    );
  }

  GestureDetector registerButton() {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        child: const Text(
          "Register",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Coolvetica",
              color: Color(0xFF2B1347)),
        ),
      ),
    );
  }

  GestureDetector loginButton() {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: ((context) => const LoginPage())),
          (route) => false),
      child: Container(
        padding: EdgeInsets.zero,
        child: const Text(
          "Log in",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Coolvetica",
              color: Color(0xFF2B1347)),
        ),
      ),
    );
  }
}
