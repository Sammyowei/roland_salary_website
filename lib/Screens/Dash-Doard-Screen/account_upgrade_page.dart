import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/dashboard_screen.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountUpgradePage extends StatefulWidget {
  const AccountUpgradePage({super.key});

  @override
  State<AccountUpgradePage> createState() => _AccountUpgradePageState();
}

class _AccountUpgradePageState extends State<AccountUpgradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
          padding: EdgeInsets.zero, width: 250, child: const DrawerScreen()),
      backgroundColor: Colors.white.withOpacity(0.99),
      appBar: AppBar(
        foregroundColor: const Color(0xFF2B1330),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Account upgrade",
          style: GoogleFonts.ptSans(
              fontSize: 22,
              color: const Color(0xFF2B1330),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 50,
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Account Level: ",
                      style: GoogleFonts.ptSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width / 6,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff2b1330).withOpacity(0.85),
                      ),
                      child: Center(
                          child: Text(
                        "Tier 1",
                        style: GoogleFonts.ptSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 50,
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name:",
                      style: GoogleFonts.ptSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      height: 25,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: FutureBuilder(
                        future: getFirstName(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState !=
                              ConnectionState.done) {
                            return Text("loading");
                          }
                          return Text(
                            myFirstName,
                            style: GoogleFonts.ptSans(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.7)),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 50,
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Phone number: ",
                      style: GoogleFonts.ptSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      height: 25,
                      // width: MediaQuery.of(context).size.width / 6,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: FutureBuilder(
                        future: getPhoneNumber(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState !=
                              ConnectionState.done) {
                            return Text("loading");
                          }
                          return Text(
                            myPhoneNumber,
                            style: GoogleFonts.ptSans(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.7)),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 50,
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Country:",
                      style: GoogleFonts.ptSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      height: 25,
                      // width: MediaQuery.of(context).size.width / 6,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: FutureBuilder(
                        future: getCountryName(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState !=
                              ConnectionState.done) {
                            return Text("loading");
                          }
                          return Text(
                            myCountryName,
                            style: GoogleFonts.ptSans(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.7)),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 65,
                  right: 65,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Account upgrade pending.",
                              style: GoogleFonts.ptSans(
                                  fontWeight: FontWeight.bold),
                            ),
                            content: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "For account upgrade contact support on telegram. To contact support, ",
                                    style: GoogleFonts.ptSans(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Click Here.",
                                    style: GoogleFonts.ptSans(
                                      fontSize: 18,
                                      color: const Color(0xFF2B1330)
                                          .withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        try {
                                          const supportLink =
                                              "https://t.me/smartpayysupport/";
                                          final url = Uri.parse(supportLink);
                                          if (await canLaunchUrl(url)) {
                                            await launchUrl(url);
                                          } else {
                                            log("Cannot open link");
                                          }
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
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xFF2B1330),
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.zero,
                        child: Center(
                          child: Text(
                            "Upgrade account level",
                            style: GoogleFonts.ptSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

GestureDetector contactSupport() {
  return GestureDetector(
    onTap: () {
      String supportTelegramLink = "https://t.me/smartpayysupport";
      final url = Uri.parse(supportTelegramLink);
      launchUrl(
        url,
      );
    },
    child: Text(
      "Click here.",
      style: GoogleFonts.ptSans(
        color: const Color(0xff2b1330).withOpacity(0.78),
      ),
    ),
  );
}
