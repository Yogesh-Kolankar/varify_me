import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 60.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text("Create Account",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text("Complete from below to continue",
                  style: TextStyle(fontSize: 12.sp)),
            ),
            SizedBox(height: 30.h),
            Center(
              child: SizedBox(
                width: 300.w,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(23.sp),
                      isDense: true,
                      labelText: "First Name",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Image.asset(
                          'lib/images/textfielduser.png',
                          scale: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.r))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: SizedBox(
                width: 300.w,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(23.sp),
                      isDense: true,
                      labelText: "Last Name",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Image.asset(
                          'lib/images/textfielduser.png',
                          scale: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                          gapPadding: 20.w,
                          borderRadius: BorderRadius.circular(14.r))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Container(
                width: 300.w,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(23.sp),
                      isDense: true,

                      //label: Text("Username"),
                      labelText: "Email",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Image.asset(
                          'lib/images/@.png',
                          scale: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.r))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: SizedBox(
                width: 300.w,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(23.sp),
                      isDense: true,
                      labelText: "Password",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Image.asset(
                          'lib/images/textfieldpassword.png',
                          scale: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.r))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: SizedBox(
                width: 300.w,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(23.sp),
                      isDense: true,
                      labelText: "Re-type Password",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Image.asset(
                          'lib/images/textfieldpassword.png',
                          scale: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.r))),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(
                          6.r,
                        )),
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text("Accept term & conditions",
                      style: TextStyle(fontSize: 12.sp)),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Container(
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
                width: 300.w,
                height: 50.h,
                child: Center(
                    child: Text(
                  "REGISTER",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                    style: TextStyle(fontSize: 12.sp)),
                Text('  Sign in here',
                    style: TextStyle(fontSize: 12.sp, color: Colors.amber))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
