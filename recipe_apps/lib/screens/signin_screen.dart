import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'home_screen.dart';
import 'signup_screen.dart'; // Add this import

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                  top: 94,
                  child: Text(
                    'Hello,',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 139,
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: const Color(0xFF121212),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 438,
                  child: Text(
                    'Forgot Password?',
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
                  left: 131,
                  top: 597,
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: ShapeDecoration(
                      color: Colors.white,
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
                  left: 141,
                  top: 607,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                            'images/icons_google.png'), // Ensure you have this image in your assets
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
                  top: 597,
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                            'images/fb.png'), // Ensure you have this image in your assets
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
                  left: 99,
                  top: 696,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
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
                                builder: (context) => const SignUp(),
                              ));
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 235,
                  top: 569,
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
                  top: 569,
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
                  top: 560,
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
                  top: 226,
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
                  top: 337,
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
                            'Enter Password',
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
                            'Enter Password',
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
                  top: 480,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF119475),
                      minimumSize: Size(315, 55),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
                    },
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
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
