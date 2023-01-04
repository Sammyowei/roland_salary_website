import 'package:flutter/material.dart';
import 'package:roland_salary_website/Screens/Home-Screen/home_page.dart';
import 'package:roland_salary_website/widgets/text_fields.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              homeButton(context),
              const SizedBox(
                
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: firstNameField(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: lastNameField(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: emailField(),
              ),
              
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: userNameField(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: phoneNumberField()
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: countryField()
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: emailField(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: emailField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

GestureDetector homeButton(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
        (route) => false),
    child: Container(
      padding: EdgeInsets.zero,
      height: 35,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Image.asset(
          "assets/images/image1.png",
          height: 150,
          width: 125,
        ),
      ),
    ),
  );
}
