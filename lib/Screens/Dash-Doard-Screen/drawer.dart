import 'dart:developer';

import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/account_upgrade_page.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/transaction_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
                                    content: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                "You can contact smartpayy support if you experience any issues using our platform.             ",
                                            style: GoogleFonts.ptSans(
                                              fontSize: 18,
                                              color: const Color(0xff2b1330),
                                            ),
                                          ),
                                          TextSpan(
                                            text: "Telegram: ",
                                            style: GoogleFonts.ptSans(
                                              fontSize: 18,
                                              color: const Color(0xff2b1330),
                                            ),
                                          ),
                                          TextSpan(
                                            text: "click here.\n ",
                                            style: GoogleFonts.ptSans(
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff2b1330)
                                                  .withOpacity(0.88),
                                              fontSize: 18,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async {
                                                const supportLink =
                                                    "https://t.me/smartpayysupport";
                                                final url =
                                                    Uri.parse(supportLink);
                                                try {
                                                  if (await canLaunchUrl(url)) {
                                                    await launchUrl(
                                                      url,
                                                      mode: LaunchMode
                                                          .platformDefault,
                                                    );
                                                  } else {
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return AlertDialog(
                                                          content: Text(
                                                            "please install telegram to contact support..",
                                                            style: GoogleFonts
                                                                .ptSans(
                                                              color: const Color(
                                                                  0xff2b1330),
                                                            ),
                                                          ),
                                                          title: Text(
                                                            "Install telegram",
                                                            style: GoogleFonts.ptSans(
                                                                color: const Color(
                                                                    0xff2b1330),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  }
                                                } catch (e) {
                                                  log(e.toString());
                                                }
                                              },
                                          ),
                                          TextSpan(
                                            text: "Send us an Email: ",
                                            style: GoogleFonts.ptSans(
                                              fontSize: 18,
                                              color: const Color(0xff2b1330),
                                            ),
                                          ),
                                          TextSpan(
                                            text: "support@smartpayy.com",
                                            style: GoogleFonts.ptSans(
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff2b1330)
                                                  .withOpacity(0.88),
                                              fontSize: 18,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async {
                                                const supportLink =
                                                    'mailto:support@smartpayy.com?subject=I%20experienced%20an%20issue%20using%20your%20platform';

                                                try {
                                                  await launchUrlString(
                                                    supportLink,
                                                    mode: LaunchMode
                                                        .platformDefault,
                                                  );
                                                } catch (e) {
                                                  log(e.toString());
                                                }
                                              },
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
                              content: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "email support: ",
                                      style: GoogleFonts.ptSans(
                                        color: const Color(0xff2b1330),
                                        fontSize: 18,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "support@smartpayy.com\n",
                                      style: GoogleFonts.ptSans(
                                        color: const Color(0xff2b1330),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () async {
                                          const email =
                                              'mailto:support@smartpayy.com?';
                                          try {
                                            await launchUrlString(
                                              email,
                                              mode: LaunchMode.platformDefault,
                                            );
                                          } catch (e) {
                                            log(e.toString());
                                          }
                                        },
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
