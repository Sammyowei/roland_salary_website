import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

const userName = "Sammyowei";
int salaryAmount = 0;

final formKey = GlobalKey<FormState>();

Future<void> signIn() async {
  await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: "", password: "");
}
