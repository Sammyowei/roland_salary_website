import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:roland_salary_website/widgets/text_fields.dart';

const userName = "Sammyowei";
int salaryAmount = 0;

final loginFormKey = GlobalKey<FormState>();
final signupFormKey = GlobalKey<FormState>();

final FirebaseAuth auth = FirebaseAuth.instance;

Future createUser() async {
  final docUser =
      FirebaseFirestore.instance.collection("users").doc(auth.currentUser!.uid);

  final user = UserData(
    userName: userNameController.text,
    firstName: firstNameController.text,
    lastName: lastNameController.text,
    phoneNumber: int.parse(phoneNumberController.text),
    emailAddress: emailController.text,
    country: countryController.text,
    salaryAmount: 0,
  );

  final mapUserToJson = user.toJson();

  await docUser.set(mapUserToJson);
}

class UserData {
  final String firstName;
  final String lastName;
  final int phoneNumber;
  final String country;
  final String userName;
  final String emailAddress;
  int salaryAmount;

  UserData({
    this.salaryAmount = 0,
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.emailAddress,
    required this.country,
  });

  Map<String, dynamic> toJson() => {
        "first name": firstName,
        "last name": lastName,
        "username": userName,
        "phone number": phoneNumber,
        "email address": emailAddress,
        "country": country,
        "salary amount": salaryAmount,
      };
}
