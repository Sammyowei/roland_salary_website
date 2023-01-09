import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/drawer.dart';

class AccountUpgradePage extends StatefulWidget {
  const AccountUpgradePage({super.key});

  @override
  State<AccountUpgradePage> createState() => _AccountUpgradePageState();
}

class _AccountUpgradePageState extends State<AccountUpgradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerScreen(),
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
                      child: Center(
                          child: Text(
                        "Samuelson Owei",
                        style: GoogleFonts.ptSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2B1330).withOpacity(0.8),
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
                      child: Center(
                          child: Text(
                        "+2349131671187",
                        style: GoogleFonts.ptSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2B1330).withOpacity(0.8),
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
                      child: Center(
                        child: Text(
                          "Nigeria",
                          style: GoogleFonts.ptSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2B1330).withOpacity(0.89),
                          ),
                        ),
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
                      "Date of Birth:",
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
                      child: Center(
                        child: Text(
                          "27-08-2004",
                          style: GoogleFonts.ptSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2B1330).withOpacity(0.8),
                          ),
                        ),
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
                  left: 70,
                  right: 70,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "Account upgrade pending.",
                                style: GoogleFonts.ptSans(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              content:Text("")
                            );
                          },
                        );
                      });
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
