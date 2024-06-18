import 'package:flutter/material.dart';
import 'package:travel_app/sign%20in%20.dart';
import 'package:travel_app/sign%20up.dart';

// ignore: camel_case_types
class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenheight = MediaQuery.of(context).size.height;
    final double screenwidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          width: screenwidth,
          height: screenheight,
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
             fit: BoxFit.fitHeight,
              image: AssetImage('assets/front.jpg')),
          ),
          child:    Column(
            children: [
               SizedBox(height:screenheight/2.5,),
              const Center(child: Text("Travel Mate",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              const SizedBox(height: 120,),
              const Center(child: Text("Explore the world now with your travel partner",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 25,),)),
              const SizedBox(height: 30,),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                height: 50,
                width: screenwidth,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(const Color(0xff003D70)),
                    elevation: WidgetStateProperty.all(0.0),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))
                ),
                  child: const Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 25,)),
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const signup()));
                }
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 5, 25, 10),
                height: 50,
                width: screenwidth,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
                    elevation: WidgetStateProperty.all(0.0),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.white),
                    )),
                ),
                  child: const Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 25,)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Signin()));
                }
                ),
              )
            ],
          )),
      ),
    );
  }
}