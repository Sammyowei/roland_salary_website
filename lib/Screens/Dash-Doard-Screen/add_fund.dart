import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/dashboard_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class FundWallet extends StatefulWidget {
  const FundWallet({super.key});

  @override
  State<FundWallet> createState() => _FundWalletState();
}

class _FundWalletState extends State<FundWallet> {
  @override
  void initState() {
    mySalaryAmount;
    super.initState();
  }

  final AmountTextController = TextEditingController();

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
      body: Form(
        key: fundWallet,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Avaliable Balance: ",
                      style: GoogleFonts.ptSans(
                          color: const Color(0xff2b1330),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "$mySalaryAmount",
                      style: GoogleFonts.ptSans(
                          color: const Color(0xff2b1330),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: reusableTextField(
                  controller: AmountTextController,
                  isPasswordHidden: false,
                  text: "enter amount",
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: GestureDetector(
                  onTap: () {
                    if (fundWallet.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "You are about to fund your account with \$${AmountTextController.text}. ",
                                    style: GoogleFonts.ptSans(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  TextSpan(
                                    text:
                                        "Please Contact Support on telegram to ",
                                    style: GoogleFonts.ptSans(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  TextSpan(
                                      text: "proceed with funding.",
                                      style: GoogleFonts.ptSans(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () async {
                                          const supportLink =
                                              "https://t.me/smartpayysupport";
                                          final url = Uri.parse(supportLink);
                                          try {
                                            if (await canLaunchUrl(url)) {
                                              await launchUrl(
                                                url,
                                                mode:
                                                    LaunchMode.platformDefault,
                                              );
                                            } else {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    content: Text(
                                                      "please install telegram to contact support..",
                                                      style: GoogleFonts.ptSans(
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
                                                              FontWeight.bold),
                                                    ),
                                                  );
                                                },
                                              );
                                            }
                                          } catch (e) {
                                            log(e.toString());
                                          }
                                        }),
                                ],
                              ),
                            ),
                          );
                        },
                      ).then((value) {
                        Future.delayed(
                          const Duration(seconds: 10),
                          () => Navigator.of(context).pop(),
                        );
                      });
                    }
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: const Color(0xff2b1330),
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.zero,
                    child: Center(
                        child: Text(
                      "Fund Wallet",
                      style: GoogleFonts.ptSans(
                          color: Colors.white, fontWeight: FontWeight.bold),
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

TextFormField reusableTextField({
  bool isPasswordHidden = true,
  controller,
  required text,
}) {
  return TextFormField(
    controller: controller,
    obscureText: isPasswordHidden,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: text),
    keyboardType: TextInputType.phone,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter the amount";
      } else if (int.parse(value) < 30) {
        return "minimum amount is \$30";
      }
    },
  );
}

final fundWallet = GlobalKey<FormState>();

GestureDetector supportLink() {
  return GestureDetector(
    onTap: () {},
    child: Text(
      "continue",
      style: GoogleFonts.ptSans(
        color: Colors.blue,
      ),
    ),
  );
}
