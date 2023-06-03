import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rakna_2/reusable_widgets.dart';

import 'Register.dart';
import 'SearchPlates.dart';
import 'constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 240, top: 30).r,
              child: Image.asset('assets/images/car.png', scale: 0.5.r),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15).r,
              child: Text(
                'Login',
                style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15).r,
              child: Text(
                'Please sign in to continue',
                style: TextStyle(color: lightGreyReceiptBG, fontSize: 15.sp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  reusableTextField('Phone number', false, Icons.phone,
                      _phoneNumberController),
                  SizedBox(
                    height: 20.h,
                  ),
                  reusableTextField(
                      "Email", false, Icons.mail_outline, _emailController),
                  SizedBox(
                    height: 20.h,
                  ),
                  reusableTextField(
                      'Password', true, Icons.lock, _passwordController),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t hava an account? ',
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Register()));
                    },
                    child: const Text(
                      'Register Now',
                      textAlign: TextAlign.end,
                      style: TextStyle(color: orangeSecondaryColor),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
