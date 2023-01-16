import 'dart:developer';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/add_fund.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/drawer.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/withdrawal_screen.dart';
import 'package:roland_salary_website/widgets/text_fields.dart';
import 'package:url_launcher/url_launcher.dart';





class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    salaryAmount;
    myUserName;
    myButtons;
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
              Container(
                child: FutureBuilder(
                  future: getUserName(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState != ConnectionState.done) {
                      return Text("loading");
                    }
                    return Text(
                      myUserName,
                      style: GoogleFonts.ptSans(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.7)),
                    );
                  },
                ),
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
                      child: FutureBuilder(
                          future: getUserSalary(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState !=
                                ConnectionState.done) {
                              return Container(
                                padding:
                                    const EdgeInsets.only(right: 290, left: 0),
                                width: 50,
                                height: 30,
                                child: const CircularProgressIndicator(
                                    color: Colors.white),
                              );
                            }
                            return Text(
                              "\$${mySalaryAmount.toStringAsFixed(2)}",
                              style: GoogleFonts.ptSans(
                                fontSize: 23.5,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.85),
                              ),
                            );
                          }),
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const FundWallet();
                      },
                    ),
                  );
                },
                child: Container(
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
                          // launch("https://t.me/smartpayysupport");
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
                                  color:
                                      const Color(0xFF2B1330).withOpacity(0.5),
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
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: myButtons),
            ],
          ),
        ),
      ),
    );
  }
}

String myUserName = "";
int mySalaryAmount = 0;
String myFirstName = '';
String myUSerLastName = "";
String myCountryName = "";
String myPhoneNumber = "";
late final myDateOfBirth;

getUserName() async {
  final firebaseUser = auth.currentUser;

  if (firebaseUser != null) {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser.uid)
        .get()
        .then((value) {
      myUserName = value["username"].toString();

      log(myUserName);
    });
  }
}

getUserSalary() async {
  final firebaseUser = auth.currentUser;

  if (firebaseUser != null) {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser.uid)
        .get()
        .then((value) {
      mySalaryAmount = value["salary amount"];
      log("$mySalaryAmount");
    });
  }
}

getFirstName() async {
  final firebaseUser = auth.currentUser;

  if (firebaseUser != null) {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser.uid)
        .get()
        .then((value) {
      myFirstName = value["first name"];
      myUSerLastName = value["last name"];
      log(myFirstName);
    });
  }
}

getPhoneNumber() async {
  final firebaseUser = auth.currentUser;

  if (firebaseUser != null) {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser.uid)
        .get()
        .then((value) {
      myCountryName = value["country"];
      log(myCountryName);
    });
  }
}

getCountryName() async {
  final firebaseUser = auth.currentUser;

  if (firebaseUser != null) {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser.uid)
        .get()
        .then((value) {
      myPhoneNumber = value["phone number"].toString();
      log(myPhoneNumber);
    });
  }
}

getDateOfBirth() async {
  final firebaseUser = auth.currentUser;

  if (firebaseUser != null) {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser.uid)
        .get()
        .then((value) {
      myDateOfBirth = value["date of birth"].toString();
      log(myDateOfBirth);
    });
  }
}

List<Widget> myButtons = [
  Container(
    height: height.toDouble(),
    width: width.toDouble(),
    decoration: decoration,
    child: const Center(
      child: Icon(Icons.electrical_services_rounded),
    ),
  ),
  Container(
    height: height.toDouble(),
    width: width.toDouble(),
    decoration: decoration,
    child: const Center(
      child:Icon(Icons.abc),
    ),
  ),
  Container(
    height: height.toDouble(),
    width: width.toDouble(),
    decoration: decoration,
    child: const Center(
      child: Icon(Icons.electric_bolt_rounded),
    ),
  ),
];
final itemColor = const Color(0xff2b1330).withOpacity(0.5);
const height = 45;
const width = 45;

final decoration = BoxDecoration(
  border: Border.all(
    color: const Color(0xff2b1330),
    width: 1.3,
  ),
  color: itemColor,
  borderRadius: BorderRadius.circular(100),
 
);
