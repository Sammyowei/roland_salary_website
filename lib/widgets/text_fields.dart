import 'dart:developer';

import 'package:flutter/material.dart';

DateTime selectedDate = DateTime(2023, 1, 1);

final emailController = TextEditingController();
final passwordController = TextEditingController();
final firstNameController = TextEditingController();
final lastNameController = TextEditingController();
final phoneNumberController = TextEditingController();
final countryController = TextEditingController();
final userNameController = TextEditingController();
final confirmPasswordController = TextEditingController();

TextFormField emailField() {
  return TextFormField(
    controller: emailController,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your email address";
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"))) {
        return "invalid email format";
      }
      return null;
    },
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
  return TextFormField(
    controller: userNameController,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your user name";
      } else if (!value.contains(RegExp(r"^[A-Za-z0-9.!#$%&'*+/=?^_`{|}~-]"))) {
        return "username must be lowercase ";
      }
      return null;
    },
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
  return TextFormField(
    controller: phoneNumberController,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your phone number";
      } else if (!value.contains(RegExp(r"^[+0-9]"))) {
        return "phone number is invalid";
      }
      return null;
    },
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "+12345....",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}

TextFormField firstNameField() {
  return TextFormField(
    controller: firstNameController,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your first name";
      } else if (!value.contains(RegExp(r"^[a-zA-Z]"))) {
        return "invalid name format ";
      }
      return null;
    },
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
  return TextFormField(
    controller: lastNameController,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your last name";
      } else if (!value.contains(RegExp(r"^[a-zA-Z]"))) {
        return "invalid name format ";
      }
      return null;
    },
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
  return TextFormField(
    controller: passwordController,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your password";
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-][a-zA-Z0-9](?:[a-zA-Z0-9@]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"))) {
        return "invalid password format";
      }
      return null;
    },
    obscureText: true,
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
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your country name";
      } else if (!value.contains(RegExp(r"^[a-zA-Z]"))) {
        return "invalid country name";
      }
      return null;
    },
    controller: countryController,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0XFF2B1347),
          ),
        ),
        hintText: "Country",
        alignLabelWithHint: true,
        fillColor: const Color(0xff2B1347)),
  );
}

TextFormField confirmPasswordField() {
  return TextFormField(
    controller: confirmPasswordController,
    obscureText: true,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your password";
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-][a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"))) {
        return "invalid password format";
      } else if (value.isNotEmpty) {
        if (value != passwordController.text) {
          return "password does not match";
        }
      }
      return null;
    },
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

bool isPasswordCorrect(String message) {
  if (passwordController.text.trim() == confirmPasswordController.text.trim()) {
    message = "Password is correct";
    log(message);
    return true;
  } else {
    message = "Password is incorrect";
    log(message);
    return false;
  }
}
