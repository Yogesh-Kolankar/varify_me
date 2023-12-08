import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:varify_me/Screens/forget_password.dart';
import 'package:varify_me/Screens/profile_page.dart';
import 'package:varify_me/Screens/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Center(
                child: Container(
                  //margin: EdgeInsets.only(left: 25.w),
                  width: 250.w,
                  //height: 100.h,
                  //color: Colors.black,
                  child: Image.asset(
                    'lib/images/Verifyme_yellow.png',
                    color: Colors.yellow,
                    fit: BoxFit.cover,
                    //height: 80.sp,
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text("Log in",
                    style: TextStyle(
                        fontSize: 20.sp, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text("Enter your email and password",
                    style: TextStyle(fontSize: 12.sp)),
              ),
              SizedBox(height: 20.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                width: 310.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14.r)),
                child: TextField(
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.all(14.sp),
                        isDense: true,
                        labelText: "Username",
                        labelStyle: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Image.asset(
                            'lib/images/textfielduser.png',
                            scale: 1,
                          ),
                        ),
                        border: InputBorder.none)),
              ),
              SizedBox(height: 15.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                width: 310.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14.r)),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Icon(
                          Icons.visibility_off_outlined,
                          size: 20.sp,
                          color: Colors.blue.shade200,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(14.sp),
                      isDense: true,
                      labelText: "Password",
                      labelStyle: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Image.asset(
                          'lib/images/textfieldpassword.png',
                          scale: 1,
                        ),
                      ),
                    )),
              ),
              SizedBox(height: 16.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22.w),
                width: 310.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(
                                6,
                              )),
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgetPassword(),
                            ));
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.pink,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      // BoxShadow(
                      //   color: Colors.grey.shade900,
                      //   offset: Offset(1.0, 6.0), //(x,y)
                      //   blurRadius: 16.0,
                      // ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 6,
                        spreadRadius: 0,
                        offset: Offset(
                          0,
                          15,
                        ),
                      ),
                    ],
                    //borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  width: 310.w,
                  height: 50.h,
                  child: Center(
                      child: Text(
                    "SIGN IN",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                  child: Text("Didn\'t have an account?",
                      style: TextStyle(fontSize: 12.sp))),
              SizedBox(height: 18.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14),
                    //color: Colors.amber,
                  ),
                  width: 310.w,
                  height: 50.h,
                  child: Center(
                      child: Text(
                    "Create an Account",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ));
  }
}
