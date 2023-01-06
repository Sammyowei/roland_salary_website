import 'package:flutter/material.dart';

final emailController = TextEditingController();
final passwordController = TextEditingController();
final firstNameController = TextEditingController();
final lastNameController = TextEditingController();
final phoneNumberController = TextEditingController();
final countryController = TextEditingController();
final userNameController = TextEditingController();
final confirmPasswordController = TextEditingController();

TextFormField emailField() {
  final emailController = TextEditingController();
  return TextFormField(
    controller: emailController,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "Email address",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}

TextFormField userNameField() {
  // final userNameController = TextEditingController();
  return TextFormField(
    controller: userNameController,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "Username",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}

TextFormField phoneNumberField() {
  // final passwordController = TextEditingController();
  return TextFormField(
    controller: passwordController,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "Phone number",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}

TextFormField firstNameField() {
  // final firstnameController = TextEditingController();
  return TextFormField(
    controller: firstNameController,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "First name",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}

TextFormField lastNameField() {
  // final lastNameController = TextEditingController();
  return TextFormField(
    controller: lastNameController,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "Last name",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}

TextFormField passwordField() {
  // final passwordController = TextEditingController();
  return TextFormField(
    controller: passwordController,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "Password",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}

TextFormField countryField() {
  // final countryController = TextEditingController();
  return TextFormField(
    controller: countryController,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "Select country",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}

TextFormField confirmPasswordField() {
  // final countryCode = TextEditingController();
  return TextFormField(
    controller: confirmPasswordController,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "Confirm password",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}
