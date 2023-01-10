import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FundWallet extends StatefulWidget {
  const FundWallet({super.key});

  @override
  State<FundWallet> createState() => _FundWalletState();
}

class _FundWalletState extends State<FundWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xff2b1330),
        title: Text(
          "Add Funds",
          style: GoogleFonts.ptSans(
            fontWeight: FontWeight.bold,
            color: const Color(0xff2b1330),
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
