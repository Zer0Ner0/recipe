import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:recipe_apps/screens/signin_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: SafeArea(
            child: Stack(
              children: [
                Positioned(
                  left: 30,
                  top: 44,
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 79,
                  child: SizedBox(
                    width: 195,
                    child: Text(
                      'Let\'s help you set up your account, it won\'t take long.',
                      style: TextStyle(
                        color: const Color(0xFF121212),
                        fontSize: 11,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 62,
                  top: 500,
                  child: Text(
                    'Accept terms & Condition',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFFF9B00),
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 500,
                  child: Container(
                    width: 17,
                    height: 17,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFFF9B00),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 131,
                  top: 671,
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/icons_google.png'), // Ensure you have this image in your assets
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19696969),
                          blurRadius: 5,
                          offset: Offset(0, 0),
                          spreadRadius: 3,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 200,
                  top: 671,
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/fb.png'), // Ensure you have this image in your assets
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19696969),
                          blurRadius: 5,
                          offset: Offset(0, 0),
                          spreadRadius: 3,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 113,
                  top: 735,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already a member? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            color: const Color(0xFFFF9B00),
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigate to sign up page
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ));
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 235,
                  top: 643,
                  child: Container(
                    width: 50,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: const Color(0xFFD9D9D9),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 90,
                  top: 643,
                  child: Container(
                    width: 50,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: const Color(0xFFD9D9D9),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 147,
                  top: 634,
                  child: Text(
                    'Or Sign in With',
                    style: TextStyle(
                      color: const Color(0xFFD9D9D9),
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 130,
                  child: SizedBox(
                    width: 315,
                    height: 81,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 26,
                          child: Container(
                            width: 315,
                            height: 55,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1.50,
                                  color: const Color(0xFFD9D9D9),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 45,
                          child: Text(
                            'Enter Name',
                            style: TextStyle(
                              color: const Color(0xFFD9D9D9),
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Name',
                            style: TextStyle(
                              color: const Color(0xFF121212),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 220,
                  child: SizedBox(
                    width: 315,
                    height: 81,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 26,
                          child: Container(
                            width: 315,
                            height: 55,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1.50,
                                  color: const Color(0xFFD9D9D9),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 45,
                          child: Text(
                            'Enter Email',
                            style: TextStyle(
                              color: const Color(0xFFD9D9D9),
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              color: const Color(0xFF121212),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 310,
                  child: SizedBox(
                    width: 315,
                    height: 81,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 26,
                          child: Container(
                            width: 315,
                            height: 55,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1.50,
                                  color: const Color(0xFFD9D9D9),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 45,
                          child: Text(
                            'Enter Passwrod',
                            style: TextStyle(
                              color: const Color(0xFFD9D9D9),
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              color: const Color(0xFF121212),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 400,
                  child: SizedBox(
                    width: 315,
                    height: 81,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 26,
                          child: Container(
                            width: 315,
                            height: 55,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1.50,
                                  color: const Color(0xFFD9D9D9),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 45,
                          child: Text(
                            'Retype Password',
                            style: TextStyle(
                              color: const Color(0xFFD9D9D9),
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Confirm Password',
                            style: TextStyle(
                              color: const Color(0xFF121212),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 550,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 85, vertical: 18),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF119475),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 11,
                      children: [
                        SizedBox(
                          width: 114,
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Opacity(
                                  opacity: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}