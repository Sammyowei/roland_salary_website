import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xFF2B1330),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(0)),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 50,
                    right: 50,
                    child: Container(
                      padding: EdgeInsets.zero,
                      child: const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    bottom: 35,
                    left: 30,
                    right: 30,
                    child: Container(
                      padding: EdgeInsets.zero,
                      child: Center(
                        child: Text(
                          userName,
                          style: GoogleFonts.ptSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Icon(Icons.account_circle_outlined),
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            child: Center(
                              child: Text(
                                "Account settings",
                                style: GoogleFonts.ptSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF2B1330),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Icon(Icons.security_update_good_sharp),
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            child: Center(
                              child: Text(
                                "Account upgrade",
                                style: GoogleFonts.ptSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF2B1330),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Icon(Icons.phone_enabled_rounded),
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            child: Center(
                              child: Text(
                                "Contact us",
                                style: GoogleFonts.ptSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF2B1330),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Icon(Icons.support_agent_rounded),
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            child: Center(
                              child: Text(
                                "Support",
                                style: GoogleFonts.ptSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF2B1330),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    left: 10,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFF2B1330), width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Log out",
                          style: GoogleFonts.ptSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color(0XFF2B1330),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
