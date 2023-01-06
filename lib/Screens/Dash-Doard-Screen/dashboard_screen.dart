import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // final _salaryAmount = 0;

  final _userName = "SammyOwei";

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
        child: const Drawer(),
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
                _userName,
                style: GoogleFonts.ptSans(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color:  Colors.black.withOpacity(0.7)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 30),
                child: Container(
                  height: 150,
                  // color: Colors.red,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ],
                  ),
                  child: Stack(children: const []),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
