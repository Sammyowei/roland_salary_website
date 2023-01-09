import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/drawer.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        foregroundColor: const Color(0xFF2B1330),
        title: Text(
          "Transaction History",
          style: GoogleFonts.ptSans(
            fontWeight: FontWeight.bold,
            color: const Color(0xFF2B1330),
          ),
        ),
      ),
      endDrawer: const Drawer(
        width: 250,
        child: DrawerScreen(),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "No transaction yet",
              style: GoogleFonts.ptSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2B1330).withOpacity(0.6),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
