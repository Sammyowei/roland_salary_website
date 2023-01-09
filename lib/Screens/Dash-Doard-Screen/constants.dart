import 'package:firebase_auth/firebase_auth.dart';

const userName = "Sammyowei";

Future<void> signIn() async {
  await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: "", password: "");
}
