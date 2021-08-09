import 'package:flutter/material.dart';
import 'package:food_delivery/source/create_account.dart';
import 'package:food_delivery/source/forgot_password.dart';
import 'package:food_delivery/source/get_started.dart';
import 'package:food_delivery/source/login.dart';
import 'package:food_delivery/source/new_password.dart';
import 'package:food_delivery/source/otp_page.dart';
import 'package:food_delivery/source/start_home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monkey Delivery App',
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        }),
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      home: StartHome(),
    );
  }
}
