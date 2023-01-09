import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:roland_salary_website/widgets/text_fields.dart';

const userName = "Sammyowei";
int salaryAmount = 0;

final formKey = GlobalKey<FormState>();

Future<void> signIn() async {
  await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
}
