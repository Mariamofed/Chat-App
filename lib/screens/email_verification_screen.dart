

import 'dart:async';
import 'package:chat_app/models/user_model.dart';
import 'package:chat_app/screens/home_screen.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {


  late final Timer timer;

  @override
  void initState() {
    bool isUserVerified;
     timer = Timer.periodic(Duration(seconds: 3), (_)async{

      isUserVerified = await AuthService.checkIfUserVerified();

      if(isUserVerified){
        //Store user into firestore
        final user = UserModel(
          id: FirebaseAuth.instance.currentUser!.uid,
          userName: FirebaseAuth.instance.currentUser!.displayName!,
          email: FirebaseAuth.instance.currentUser!.email!
          );
       await AuthService.saveUserIntoDatabase(user);
        timer.cancel();
        Navigator.pushAndRemoveUntil(
          context,
           MaterialPageRoute(builder:(context) => HomeScreen(),),
          (routes) => false
          );

      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator.adaptive(),
            Text("Waiting for verification")
          ],
        ),
      ),
    );
  }
}