import "package:flutter/material.dart";

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:varify_me/Screens/scan_resources.dart';
import 'package:varify_me/Screens/welcome.dart';
import 'package:varify_me/document.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: "Verify Me",
        theme: ThemeData(primarySwatch: Colors.grey),
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
      ), //ProfilePage()) //WelcomeScreen()) //SignUp()) //WelcomeScreen()) //Login())
      //MobileVerification()) //ChangePassword()) //ForgetPassword()) SignUp()) Login()) //WelcomeScreen()),
    );
  }
}
