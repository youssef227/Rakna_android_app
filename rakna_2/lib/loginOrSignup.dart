
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Login.dart';
import 'Register.dart';
import 'constants.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({Key? key}) : super(key: key);

  @override
  State<LoginOrSignup> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,

        children: [
          Container(
            height: 350.h,
            decoration:  BoxDecoration(
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(100.0)),
                gradient: authGradient),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/tyre.png', scale: 5.w),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 30).r,
                      child:  Text(
                        'RAKNA',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.sp,
                            fontWeight: FontWeight.bold),
                      )),
                   SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
          ),
           SizedBox(
            height: 60.h,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Register()));
            },
            child: Container(
                width: 200.w,
                height: 50.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow:  [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 1),
                        blurRadius: 12.0.r)
                  ],
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
                child:  Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 27.sp,
                      fontWeight: FontWeight.bold),
                )),
          ),
           SizedBox(
            height: 40.h,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Login()));
            },
            child: Container(
                width: 200.w,
                height: 50.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow:  [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0, 1),
                        blurRadius: 12.0.r)
                  ],
                  borderRadius: BorderRadius.circular(30.0.r),
                  color: Color(0xfff1974d),
                ),
                child:  Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 27.sp,
                      fontWeight: FontWeight.bold),
                )),
          ),
            SizedBox(
            height: 90.h,
          ),
           Text(
            'Erken 3edel lagibak',
            textAlign: TextAlign.end,
            style: TextStyle(
                color: Color(0xfff1974d),
                fontSize: 25.sp,

                fontWeight: FontWeight.bold),
          ),
            SizedBox(
            height: 4.h,
          ),
        ],
      ),
    );
  }
}
