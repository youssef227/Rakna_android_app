import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:rakna_2/reusable_widgets.dart';
import 'package:rakna_2/user.dart';
import 'Login.dart';
import 'SearchPlates.dart';
import 'constants.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _plateNumberController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
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
              child: Image.asset('assets/images/motorbike.png', scale: 1.5.w),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15).r,
              child: Text(
                'Create Account',
                style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  reusableTextField("Full name", false, Icons.person_outline,
                      _fullNameController),
                  SizedBox(
                    height: 20.h,
                  ),
                  reusableTextField(
                      "Email", false, Icons.mail_outline, _emailController),
                  SizedBox(
                    height: 20.h,
                  ),
                  reusableTextField('Plates number', false,
                      Icons.calendar_view_day_outlined, _plateNumberController),
                  SizedBox(
                    height: 20.h,
                  ),
                  reusableTextField('Phone number', false, Icons.phone_outlined,
                      _phoneNumberController),
                  SizedBox(
                    height: 20.h,
                  ),
                  reusableTextField('Password', true, Icons.lock_outline,
                      _passwordController),
                  SizedBox(
                    height: 20.h,
                  ),
                  reusableTextField('Confirm password', true,
                      Icons.lock_outline, _confirmPasswordController),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 170),
              child: Container(
                  width: 200.w,
                  height: 50.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: const Offset(0, 1),
                          blurRadius: 12.0.r)
                    ],
                    borderRadius: BorderRadius.circular(30.0.r),
                    color: orangeSecondaryColor,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 33.w,
                      ),
                      TextButton(
                        onPressed: () {if (_passwordController.text ==
                            _confirmPasswordController.text) {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text)
                              .then((value) {
                            if (kDebugMode) {
                              print("Created New account successfully");
                            }
                            final name = _fullNameController.text;
                            final email = _emailController.text;
                            final plate = _plateNumberController.text;
                            final phone = _phoneNumberController.text;
                            createUser(name: name, email: email, plate: plate, phone:phone );
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                const Searchplates()), (Route<dynamic> route) => false);
                          }).onError((error, stackTrace) {
                            if (kDebugMode) {
                              print("Error ${error.toString()}");
                            }
                          });

                        }
                        else{if (kDebugMode) {
                          print("Enter correct password");
                        }}

                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 11.w,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 35.r,
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 11.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const Login()));

                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: orangeSecondaryColor),
                    ))
              ],
            )
          ],
        ),
      ),
    );


  }

  Future createUser({required String name, required String phone, required String email, required String plate}) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc(plate);
  final json = {
    'name': name,
    'phone': phone,
    'email': email,
    'plate': plate
  };
  await docUser.set(json);
  }
}
