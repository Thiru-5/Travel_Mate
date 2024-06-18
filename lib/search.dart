import 'package:flutter/material.dart';

import 'SearchResultPage.dart';
import 'sign in .dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _searchQuery = '';
  List<String> _searchResults = [];
  final List<String> _recentSearches = ['Cuddalore', 'Coimbatore', 'Chennai', 'Madurai'];

  void _search(String query) {
    // Simulate searching functionality
    setState(() {
      _searchQuery = query;
      // Example: If query matches recent search, update _searchResults
      if (_recentSearches.contains(query)) {
        _searchResults = [query];
      } else {
        _searchResults = [];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300], 
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 20,),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none, 
                  ),
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
                  onSubmitted: (value) {
                    _search(_searchQuery);
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            _searchQuery.isEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: _recentSearches.map((recentSearch) {
                      return GestureDetector(
                        onTap: () {
                          _navigateToSearchResult(recentSearch);
                        },
                        child: ListTile(
                          title: Text(recentSearch),
                          leading: const Icon(Icons.history),
                        ),
                      );
                    }).toList(),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: _searchResults.length,
                      itemBuilder: (context, index) {
                        final result = _searchResults[index];
                        return GestureDetector(
                          onTap: () {
                            _navigateToSearchResult(result);
                          },
                          child: ListTile(
                            title: Text(result),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  void _navigateToSearchResult(String query) {
    // Navigate to the next page when tapped
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchResultPage(query),
      ),
    );
  }
}

