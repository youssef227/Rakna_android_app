import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Register.dart';
import 'constants.dart';
import 'loginOrSignup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 3),
        ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const LoginOrSignup()))
    );
  }
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // backgroundColor: Colors.orange,
      body: Container(
        decoration:   BoxDecoration(
            gradient: authGradient,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Image.asset('assets/images/tyre.png', scale: 3.5.w),
            Container(
                margin:  const EdgeInsets.symmetric(vertical: 30).r,
                child:  Text(
                  'RAKNA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.sp,
                      fontWeight: FontWeight.bold),
                )),
             SizedBox(
              height: 150.h,
            ),

             Text(
              'Erken 3edel lagibak',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold),
            ),
             SizedBox(
              height: 20.h,
            ),
          ],
          ),
        ),
      ),
    );
  }
}
