import 'package:flutter/material.dart';
import '../screens/search_result_screen.dart';

class MySearchBar extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor:Colors.blue,
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          color: Colors.grey,
          onPressed: () => _searchController.clear(),
        ),
        prefixIcon: IconButton(
          icon: const Icon(Icons.search),
          color: Colors.grey,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchResultScreen(keyword: _searchController.text),
              ),
            );
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
      style: const TextStyle(color: Colors.black),
    );
  }
}
