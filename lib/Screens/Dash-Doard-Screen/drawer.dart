import 'dart:developer';

import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/account_upgrade_page.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/transaction_screen.dart';
import 'package:roland_salary_website/Screens/Home-Screen/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  late final _emailRecognizer = TapGestureRecognizer()..onTap = _takeToEmailTap;
  late final _telegramRecogniser = TapGestureRecognizer()
    ..onTap = _takeToTelegramTap;

  void _takeToEmailTap() {
    launch("mailto:support@smartpayy.com");
  }

  void _takeToTelegramTap() {
    launch("https://t.me/smartpayysupport");
  }

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
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 10,
                    right: 10,
                    child: GestureDetector(
                      onTap: () {
                        Scaffold.of(context).closeEndDrawer();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.zero,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.zero,
                              child: const Icon(Icons.home_rounded),
                            ),
                            Container(
                              padding: EdgeInsets.zero,
                              child: Center(
                                child: Text(
                                  "Home",
                                  style: GoogleFonts.ptSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF2B1330),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 10,
                    child: GestureDetector(
                      onTap: (() {
                        Scaffold.of(context).closeEndDrawer();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const TransactionHistory();
                            },
                            maintainState: false));
                      }),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.zero,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.zero,
                              child: const Icon(Icons.history),
                            ),
                            Container(
                              padding: EdgeInsets.zero,
                              child: Center(
                                child: Text(
                                  "Trasaction history",
                                  style: GoogleFonts.ptSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF2B1330),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 10,
                    child: GestureDetector(
                      onTap: () {
                        Scaffold.of(context).closeEndDrawer();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const AccountUpgradePage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.zero,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.zero,
                              child:
                                  const Icon(Icons.security_update_good_sharp),
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
                            child: const Icon(Icons.phone_enabled_rounded),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Contact us",
                                      style: GoogleFonts.ptSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff2b1330),
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                      launch("mailto:support@smartpayy.com?");
                                        },
                                        child: Text(
                                          "Email",
                                          style: GoogleFonts.ptSans(
                                            color: const Color(0xff2b1330),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: ()  {
                                    launch("https://t.me/smartpayysupport");
                                          },
                                          child: Text(
                                            "Telegram",
                                            style: GoogleFonts.ptSans(
                                              color: const Color(0xff2b1330),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ))
                                    ],
                                    content: SelectableText.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                "You can contact smartpayy support if you experience any issues using our platform.",
                                            style: GoogleFonts.ptSans(
                                              fontSize: 18,
                                              color: const Color(0xff2b1330),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
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
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180,
                    left: 10,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "Support",
                                style: GoogleFonts.ptSans(
                                  fontSize: 18,
                                  color: const Color(0xff2b1330),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              actions: [
                                TextButton(onPressed: () {
                                  launch("mailto:support@smartpayy.com?");
                                }, child: Text("Email", style: GoogleFonts.ptSans(
                                  color: const Color(0xff2b1330),
                                  fontWeight: FontWeight.bold
                                ),))
                              ],
                              content: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "You can contact support through email for any issues you experience using our platform, but for account upgrade contact support on telegram..",
                                      style: GoogleFonts.ptSans(
                                        color: const Color(0xff2b1330),
                                        fontSize: 18,
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
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
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    left: 10,
                    child: GestureDetector(
                      onTap: () async {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: Color(0xff2b1330),
                              ),
                            );
                          },
                        );
                        auth.currentUser!.uid;
                        Future.delayed(const Duration(seconds: 1), () {
                          auth.signOut();
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                        });
                      },
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
