// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/OTP.dart';
import 'package:travel_app/sign%20in%20.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _isObscure = true; // Variable to toggle password visibility

  @override
  Widget build(BuildContext context) {
    final double screenheight = MediaQuery.of(context).size.height;
    final double screenwidth = MediaQuery.of(context).size.width;

    var enableborder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );

    var focusedborder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.black),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          width: screenwidth,
          height: screenheight,
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              //fit: BoxFit.fitHeight,
              image: AssetImage('assets/sign.jpg'),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
            ),
            child: SizedBox(
              width: screenwidth,
              height: screenheight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 125),
                      const Center(
                        child: Text(
                          "New User",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 375,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: screenwidth,
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "First Name",
                                  enabledBorder: enableborder,
                                  focusedBorder: focusedborder,
                                ),
                                cursorColor: const Color(0xff003D70),
                              ),
                            ),
                            Container(
                              width: screenwidth,
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Last Name",
                                  enabledBorder: enableborder,
                                  focusedBorder: focusedborder,
                                ),
                                cursorColor: const Color(0xff003D70),
                              ),
                            ),
                            Container(
                              width: screenwidth,
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "E-Mail",
                                  enabledBorder: enableborder,
                                  focusedBorder: focusedborder,
                                ),
                                cursorColor: const Color(0xff003D70),
                              ),
                            ),
                            Container(
                              width: screenwidth,
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                controller: _passwordController,
                                obscureText: _isObscure,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  enabledBorder: enableborder,
                                  focusedBorder: focusedborder,
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                    child: Icon(
                                      _isObscure ? Icons.visibility : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                cursorColor: const Color(0xff003D70),
                              ),
                            ),
                            Container(
                              width: screenwidth,
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                controller: _confirmPasswordController,
                                obscureText: _isObscure,
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
                                  enabledBorder: enableborder,
                                  focusedBorder: focusedborder,
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                    child: Icon(
                                      _isObscure ? Icons.visibility : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                cursorColor: const Color(0xff003D70),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      Container(
                        margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                        height: 50,
                        width: screenwidth,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              const Color(0xff003D70),
                            ),
                            elevation: WidgetStateProperty.all(0.0),
                            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => const OTPScreen()));},
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenwidth,
                       // padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text("Already have an account?",style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                )),
                            SizedBox(width: 100,
                              child: TextButton(
                                style:ButtonStyle(padding: const WidgetStatePropertyAll(EdgeInsets.only(right: 0),),
                                elevation: WidgetStateProperty.all(0)) ,
                                 child: const Text(
                                  "Sign in",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                onPressed: () {
                                   Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => const Signin()));
                                },),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Travel Mate",
                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
