import 'package:flutter/material.dart';
import 'package:travel_app/firstpage.dart';


class Frontpage extends StatefulWidget {
  const Frontpage({super.key});

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  @override
  void initState() {
    super.initState();
    _showFrontPage(); // Added this line to show the front page initially
  }

  Future<void> _showFrontPage() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => const firstpage()),
    );
  }

  @override
  Widget build(BuildContext context) {

        final double screenheight = MediaQuery.of(context).size.height;
    final double screenwidth = MediaQuery.of(context).size.width;  

    return Center(
      child: Container(
        width: screenwidth,
        height: screenheight,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage('assets/front.jpg')),
        ),
        child:  const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 170,),
            Text("Travel Mate",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,decoration: TextDecoration.none),),
          ],
        )),
      
    );
  }
}
