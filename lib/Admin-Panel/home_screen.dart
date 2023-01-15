import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roland_salary_website/Screens/Dash-Doard-Screen/constants.dart';

class AdminPannel extends StatefulWidget {
  const AdminPannel({super.key});

  @override
  State<AdminPannel> createState() => _AdminPannelState();
}

class _AdminPannelState extends State<AdminPannel> {
  @override
  void initState() {
    readUser();

    super.initState();
  }

  Widget buildUsers(UserData user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(),
        height: 200,
        // color:  Colors.red,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.red),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Text(
                "First name: ${user.firstName}",
                style: GoogleFonts.ptSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Text(
                "Last Name: ${user.lastName}",
                style: GoogleFonts.ptSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 10,
              child: Text(
                "Username: ${user.userName}",
                style: GoogleFonts.ptSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              right: 10,
              child: Text(
                "Salary: ${user.salaryAmount}",
                style: GoogleFonts.ptSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Positioned(
              bottom: 60,
              left: 10,
              right: 10,
              child: Text(
                "email: ${user.emailAddress}",
                style: GoogleFonts.ptSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stream<List<UserData>> readUser() {
    return FirebaseFirestore.instance.collection("users").snapshots().map(
        (snapshot) =>
            snapshot.docs.map((doc) => UserData.fromJson(doc.data())).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smartpayy admin"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xff2b1330),
        elevation: 0,
      ),
      body: StreamBuilder(
        stream: readUser(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final users = snapshot.data!;

            return ListView(
              children: users.map(buildUsers).toList(),
            );
          } else if (snapshot.hasError) {
            return Text("Something Went worng ${snapshot.error.toString()}");
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
