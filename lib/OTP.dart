// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:travel_app/home.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {

    //final double screenheight = MediaQuery.of(context).size.height;
    final double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 150,),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Code Verification',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text("Enter the verification code we just sent on your email address",textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                ),),
              const SizedBox(height: 20.0),
              OTPForm(), // Custom widget to build OTP input fields
              const SizedBox(height: 20.0),
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
                                      MaterialPageRoute(builder: (context) => SuccessScreen()));},
                            child: const Text(
                              "Verify OTP",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
        
                        
            ],
          ),
        ),
      ),
    );
  }
}

class OTPForm extends StatefulWidget {
  const OTPForm({super.key});

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  // TextEditingController for each OTP digit
  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();

  // FocusNode for each OTP digit
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  // Function to handle OTP input logic

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OTPTextField(controller: _otpController1, focusNode: _focusNode1, nextFocusNode: _focusNode2),
        OTPTextField(controller: _otpController2, focusNode: _focusNode2, nextFocusNode: _focusNode3),
        OTPTextField(controller: _otpController3, focusNode: _focusNode3, nextFocusNode: _focusNode4),
        OTPTextField(controller: _otpController4, focusNode: _focusNode4, nextFocusNode:_focusNode4,),
      ],
    );
  }
}

class OTPTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode nextFocusNode;

  const OTPTextField({super.key, required this.controller, required this.focusNode, required this.nextFocusNode});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        onChanged: (value) {
          if (value.isNotEmpty) {
            if (nextFocusNode != null) {
              nextFocusNode.requestFocus();
            }
          }
        },
        decoration: InputDecoration(
          counter: const Offstage(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
void initState() {
    super.initState();
    _showFrontPage(); // Added this line to show the front page initially
  }

  Future<void> _showFrontPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'OTP Verified Successfully!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Icon(Icons.check_circle_outline_rounded, color: Colors.green, size: 100.0),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "You have been successfully registered.Explore Beautiful world!",textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.4,
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}