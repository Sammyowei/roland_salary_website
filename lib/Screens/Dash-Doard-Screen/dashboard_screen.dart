import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/drawer.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/withdrawal_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    setState(() {
      salaryAmount;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String greeting;

    if (now.hour < 12) {
      greeting = "Good morning,";
    } else if (now.hour < 17) {
      greeting = "Good afternoon,";
    } else {
      greeting = "Good evening, ";
    }

    return Scaffold(
      endDrawer: Container(
        padding: EdgeInsets.zero,
        child: const Drawer(
          width: 220,
          child: DrawerScreen(),
        ),
      ),
      appBar: AppBar(
          foregroundColor: const Color(0xFF2B1330).withOpacity(0.7),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.zero,
            width: 90,
            child: Opacity(
              opacity: 0.8,
              child: Center(
                  child: Image.asset(
                "assets/images/image1.png",
              )),
            ),
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                greeting,
                style: GoogleFonts.ptSans(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.5)),
              ),
              Text(
                userName,
                style: GoogleFonts.ptSans(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  // color: Colors.red,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2B1330),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: 30,
                      left: 15,
                      child: Text(
                        "Wallet balance:",
                        style: GoogleFonts.ptSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.85),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 15,
                      right: 15,
                      child: Text(
                        "\$${salaryAmount.toInt().toStringAsFixed(2)}",
                        style: GoogleFonts.ptSans(
                          fontSize: 23.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.85),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 22,
                          width: MediaQuery.of(context).size.width / 6.5,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.55),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(35),
                                  topRight: Radius.circular(15))),
                          padding: EdgeInsets.zero,
                          child: Center(
                            child: Text(
                              "Tier 1",
                              style: GoogleFonts.ptSans(
                                  color: const Color(0xFF2B1330).withOpacity(1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ))
                  ]),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.transparent,
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2B1330),
                        borderRadius: BorderRadius.circular(8.5),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF2B1330).withOpacity(0.5),
                              offset: const Offset(-2, 2),
                              blurRadius: 1)
                        ],
                      ),
                      child: Center(
                          child: Text(
                        "Add funds",
                        style: GoogleFonts.ptSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.89),
                        ),
                      )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const WithdrawalScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.8,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2B1330),
                          borderRadius: BorderRadius.circular(8.5),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xFF2B1330).withOpacity(0.5),
                                offset: const Offset(2, 2),
                                blurRadius: 1)
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Withdraw funds",
                            style: GoogleFonts.ptSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.89),
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
      ),
    );
  }
}
