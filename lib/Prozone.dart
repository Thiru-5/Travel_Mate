// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'search.dart';
import 'sign in .dart';

class Prozone extends StatelessWidget {
  const Prozone({super.key});
  

  @override
  Widget build(BuildContext context) {

        final double screenwidth = MediaQuery.of(context).size.width;

        // ignore: non_constant_identifier_names
        var Bookmark = IconButton(
      icon: const Icon(Icons.bookmark_outline,color: Colors.white,size: 30,),
      onPressed: () {},
    );

    var star = const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star_half_outlined,
          color: Colors.yellow,
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Travel Mate",
            style: TextStyle(color: Color(0xff003D70), fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                child: ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text('Sign Out'),
                  onTap: () {
                    Navigator.of(context).push(
                     MaterialPageRoute(builder: (context) => const Signin()));
                  },
                ),
              ),
            ],
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          width:screenwidth,
          child: Column(
            children: [
              Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 45,
                    width: screenwidth,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        alignment: Alignment.centerLeft,
                        backgroundColor: WidgetStateProperty.all<Color>(
                          const Color.fromARGB(255, 200, 211, 219),
                        ),
                        elevation: WidgetStateProperty.all(0.0),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>  SearchPage()));
                      },
                      child:  const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Coimbatore",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.search)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
              width: screenwidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/prozone.jpg'),
                ),
              ),
              child:Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, bottom: 20),
                                      alignment: Alignment.bottomRight,
                                      child: Bookmark),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Prozone",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "Shapping Mall",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            star,
                                          ],
                                        ),
                                        
                                      ],
                                    ),
                                  )
                                ],
                              ),
                  ),
                  const SizedBox(height: 20,),
                  const Align(alignment: Alignment.centerLeft,
                    child: Text(
                            "View Direction",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
  onPressed: () {
   
  },
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.zero, 
  ),
  child: Container(
    height: 250,
    width: screenwidth,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/Map.jpg'),
      ),
    ),
  ),
),

              const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),
              height: 50,
              width: screenwidth,
              child: const Center(
                child: Text(
                              "Write Review",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
              ),
            )

            ],
          ),
        ),
      ),


    );
  }
}
