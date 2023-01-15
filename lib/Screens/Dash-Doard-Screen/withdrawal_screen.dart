import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/dashboard_screen.dart';

final withdrawalGlobalKey = GlobalKey<FormState>();

class WithdrawalScreen extends StatefulWidget {
  const WithdrawalScreen({super.key});

  @override
  State<WithdrawalScreen> createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: const Color(0xff2b1330),
        backgroundColor: Colors.transparent,
        title: Text(
          "Withdraw funds",
          style: GoogleFonts.ptSans(
            fontWeight: FontWeight.bold,
            color: const Color(0xff2b1330),
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: withdrawalGlobalKey,
        child: Form(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Beneficiary Name",
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  // Add beneficiaryTextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade300,
                      ),
                      child: beneficiaryName(),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Bank Name",
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  // add bankNameTextField()
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade300,
                      ),
                      child: bankName(),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Accoount Number",
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Add accountNumberTextField()
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade300,
                      ),
                      child: accountNumber(),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "SWIFT Code",
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Add swiftCodeTextField()

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade300,
                      ),
                      child: swiftCode(),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Bank Address",
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Add bankAddressTextField()

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade300,
                      ),
                      child: bankAddress(),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Withdrawal Amount",
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2b1330).withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Add bankAddressTextField()

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade300,
                      ),
                      child: withdrawalAmount(),
                    ),
                  ),

                  SizedBox(
                    height: 35,
                  ),

                  Center(
                    child: GestureDetector(
                      onTap: () {
                        if (withdrawalGlobalKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                  "Withdrawals are not allowed for your account level.\nPlease go to the Account upgrade page to upgrade your account",
                                  style: GoogleFonts.ptSans(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff2b1330),
                                  ),
                                ),
                              );
                            },
                          );
                          Future.delayed(const Duration(seconds: 4), () {
                            Navigator.of(context).pop();
                          });
                        }
                      },
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width / 3,
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                            color: const Color(0xff2b1330),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(4, 4),
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ]),
                        child: Center(
                          child: Text(
                            "Withdraw",
                            style: GoogleFonts.ptSans(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final bankNamecontroller = TextEditingController();
final accountNumberController = TextEditingController();
final beneficiaryNameController = TextEditingController();
final bankAdressController = TextEditingController();
final swiftCodeController = TextEditingController();
final withdrawalamountController = TextEditingController();

TextFormField bankName() {
  return TextFormField(
    controller: bankNamecontroller,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter beneficiary bank name";
      } else if (!value.contains(RegExp(r"^[A-Za-z]"))) {
        return "invalid format";
      }
      return null;
    },
    decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Bank Name",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347),
        hintStyle: GoogleFonts.ptSans()),
  );
}

TextFormField beneficiaryName() {
  return TextFormField(
    controller: beneficiaryNameController,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter beneficiary's name";
      } else if (!value.contains(RegExp(r"^[A-Za-z]"))) {
        return "invalid format";
      }
      return null;
    },
    decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Benefitiary name",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347),
        hintStyle: GoogleFonts.ptSans()),
  );
}

TextFormField accountNumber() {
  return TextFormField(
    controller: accountNumberController,
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter beneficiary's account number";
      } else if (!value.contains(RegExp(r"^[0-9]"))) {
        return "invalid format";
      }
      return null;
    },
    decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Account Number",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347),
        hintStyle: GoogleFonts.ptSans()),
  );
}

TextFormField swiftCode() {
  return TextFormField(
    controller: swiftCodeController,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter bank SWIFT Code";
      } else if (!value.contains(RegExp(r"^[A-Z0-9]"))) {
        return "invalid format";
      }
      return null;
    },
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: "SWIFT Code",
      hintStyle: GoogleFonts.ptSans(),
      alignLabelWithHint: true,
      fillColor: Color(0xff2B1347),
    ),
  );
}

TextFormField bankAddress() {
  return TextFormField(
    controller: bankAdressController,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter beneficiary's bank address";
      } else if (!value.contains(RegExp(r"^[A-Za-z0-9']"))) {
        return "invalid format";
      }
      return null;
    },
    decoration: InputDecoration(
      border: InputBorder.none,
      enabled: true,
      hintText: "Bank Address",
      alignLabelWithHint: true,
      hintStyle: GoogleFonts.ptSans(),
      fillColor: const Color(0xff2B1347),
    ),
  );
}

TextFormField withdrawalAmount() {
  return TextFormField(
    controller: withdrawalamountController,
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter an amount to withdraw";
      } else if (!value.contains(RegExp(r"^[0-9]"))) {
        return "invalid format";
      } else if (int.parse(value) < 40) {
        return " minimum withdrawal amount is \$40";
      }
      return null;
    },
    decoration: InputDecoration(
      border: InputBorder.none,
      enabled: true,
      hintText: "Amount",
      alignLabelWithHint: true,
      hintStyle: GoogleFonts.ptSans(),
      fillColor: Color(0xff2B1347),
    ),
  );
}
