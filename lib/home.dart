// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app/Prozone.dart';
import 'package:travel_app/search.dart';
import 'package:travel_app/sign%20in%20.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // final double screenheight = MediaQuery.of(context).size.height;
    final double screenwidth = MediaQuery.of(context).size.width;

    PopupMenuItem(
      child: ListTile(
        leading: const Icon(Icons.exit_to_app),
        title: const Text('Sign Out'),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Signin()));
        },
      ),
    );

    // ignore: non_constant_identifier_names
    var Bookmark = IconButton(
      icon: const Icon(
        Icons.bookmark_outline,
        color: Colors.white,
      ),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 80, 0, 0),
              height: 300,
              width: screenwidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/home1.png'),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Thiru",
                        style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      PopupMenuButton( // PopupMenuButton added here
                        icon: Icon(Icons.more_vert_rounded, color: Colors.white),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: ListTile(
                              leading: const Icon(Icons.exit_to_app),
                              title: const Text('Sign Out'),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => const Signin()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                          SizedBox(width: 10,)
                    ],
                  ),
                  Container(
                      width: screenwidth,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Explore beautiful world",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      )),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
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
                          Color.fromARGB(255, 231, 222, 222),
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
                            builder: (context) => SearchPage()));
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Search for Cities",
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
                  SizedBox(
                    width: screenwidth,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Places in Coimbatore",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "More>",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    width: screenwidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Prozone()));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                          ),
                          child: Container(
                            height: 200,
                            width: screenwidth / 2.5,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/valparai.jpg'),
                              ),
                            ),
                            child: Column(
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
                                        "Valparai",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "Mountains",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      star,
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Prozone()));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                          ),
                          child: Container(
                            height: 200,
                            width: screenwidth / 2.5,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/prozone.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 20),
                                  alignment: Alignment.bottomRight,
                                  child: Bookmark,
                                ),
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
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "Shopping Mall",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      star,
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    width: screenwidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Prozone()));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                          ),
                          child: Container(
                            height: 200,
                            width: screenwidth / 2.5,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/blackthunder.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 20),
                                  alignment: Alignment.bottomRight,
                                  child: Bookmark,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Black Thunder",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "Theme Park",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      star,
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Prozone()));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                          ),
                          child: Container(
                            height: 200,
                            width: screenwidth / 2.5,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/isha.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 20),
                                  alignment: Alignment.bottomRight,
                                  child: Bookmark,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Isha",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "Religious Site",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      star,
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: screenwidth,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Places in Mettupalayam",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "More>",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    width: screenwidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Prozone()));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                          ),
                          child: Container(
                            height: 200,
                            width: screenwidth / 2.5,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/kodiveri.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 20),
                                  alignment: Alignment.bottomRight,
                                  child: Bookmark,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Kodiveri Dam",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "Waterfall",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      star,
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Prozone()));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0, // No shadow
                          ),
                          child: Container(
                            height: 200,
                            width: screenwidth / 2.5,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/fun mall.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 20),
                                  alignment: Alignment.bottomRight,
                                  child: Bookmark,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Fun Mall",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "Shopping Mall",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      star,
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
