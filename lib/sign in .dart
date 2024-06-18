// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:travel_app/home.dart';
import 'dart:ui';

import 'sign up.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true; // Variable to toggle password visibility

  @override
  Widget build(BuildContext context) {
    final double screenheight = MediaQuery.of(context).size.height;
    final double screenwidth = MediaQuery.of(context).size.width;

    var enableborder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: BorderSide(
        color: Colors.black,
      ),
    );

    var focusedborder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Color(0xff003D70)),
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
                      const SizedBox(height: 250),
                      const Center(
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: screenwidth,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Username",
                            enabledBorder: enableborder,
                            focusedBorder: focusedborder,
                          ),
                          cursorColor: const Color(0xff003D70),
                        ),
                      ),
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 5,),
                      Container(
                        padding: const EdgeInsets.only(right: 30,bottom: 30),
                        alignment: Alignment.centerRight,
                        child: const Text("Forget Password?",style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(25, 20, 25, 0),
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
                                    MaterialPageRoute(builder: (context) => const Home()));},
                          child: const Text(
                            "Sign in",
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
                            const Text("Don’t have an account?",style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                )),
                            SizedBox(width: 100,
                              child: TextButton(
                                style:ButtonStyle(padding: const WidgetStatePropertyAll(EdgeInsets.only(right: 0),),
                                elevation: WidgetStateProperty.all(0)) ,
                                 child: const Text(
                                  "Sign up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                onPressed: () {
                                   Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => const signup()));
                                },),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text("Travel Mate",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



