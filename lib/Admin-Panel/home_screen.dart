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
  final userCollection =
      FirebaseFirestore.instance.collection("users").snapshots();
  @override
  void initState() {
    // readUser();

    super.initState();
  }

  // Widget buildUsers(UserData user) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //       padding: const EdgeInsets.only(),
  //       height: 200,
  //       // color:  Colors.red,
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10), color: Colors.red),
  //       child: Stack(
  //         children: [
  //           Positioned(
  //             top: 10,
  //             left: 10,
  //             child: Text(
  //               "First name: ${user.firstName}",
  //               style: GoogleFonts.ptSans(
  //                 color: Colors.white,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 18,
  //               ),
  //             ),
  //           ),
  //           Positioned(
  //             top: 10,
  //             right: 10,
  //             child: Text(
  //               "Last Name: ${user.lastName}",
  //               style: GoogleFonts.ptSans(
  //                 color: Colors.white,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 18,
  //               ),
  //             ),
  //           ),
  //           Positioned(
  //             bottom: 100,
  //             left: 10,
  //             child: Text(
  //               "Username: ${user.userName}",
  //               style: GoogleFonts.ptSans(
  //                 color: Colors.white,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 18,
  //               ),
  //             ),
  //           ),
  //           Positioned(
  //             bottom: 100,
  //             right: 10,
  //             child: Text(
  //               "Salary: ${user.salaryAmount}",
  //               style: GoogleFonts.ptSans(
  //                 color: Colors.white,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 18,
  //               ),
  //             ),
  //           ),
  //           Positioned(
  //             bottom: 60,
  //             left: 10,
  //             right: 10,
  //             child: Text(
  //               "email: ${user.emailAddress}",
  //               style: GoogleFonts.ptSans(
  //                 color: Colors.white,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 18,
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Stream<List<UserData>> readUser() {
  //   return FirebaseFirestore.instance.collection("users").snapshots().map(
  //       (snapshot) =>
  //           snapshot.docs.map((doc) => UserData.fromJson(doc.data())).toList());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smartpayy admin"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff2b1330),
        elevation: 5,
      ),
      body: StreamBuilder<Object>(
          stream: userCollection,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const Center(
                child: Text("Has data"),
              );
            }
            else if(snapshot.hasError){
              return const Center(
child: Text("An error occured our end"),
              );
            }
            else if(!snapshot.hasData){
              return const Center(
                child: Text("Theres no data to display."),
              );
            }
            return const Center(
              child: Text(""),
            );
          }),
    );
  }
}
