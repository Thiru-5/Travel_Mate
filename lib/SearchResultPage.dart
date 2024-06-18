// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'Prozone.dart';
import 'search.dart';
import 'sign in .dart';

class SearchResultPage extends StatelessWidget {
  final String result;

  const SearchResultPage(this.result, {super.key});
  

  @override
  Widget build(BuildContext context) {

    final double screenwidth = MediaQuery.of(context).size.width;

    var Bookmark = IconButton(
      icon: const Icon(Icons.bookmark_outline,color: Colors.white,),
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
        child: Center(
          child: Container(
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
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            result,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          const Icon(Icons.search)
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
                            "Popular Places in Coimbatore",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
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
                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Prozone()));},
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
                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  const Prozone()));},
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
                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  const Prozone()));},
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
                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  const Prozone()));},
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
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      width: screenwidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  const Prozone()));},
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
                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  const Prozone()));},
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
        ),
      ),
    );
  }
}
