import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/service/constant.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.deepPurple[50],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: Constant.homeSearchBoxHint,
        prefixIcon: const Icon(Icons.search_rounded),
        prefixIconColor: Colors.grey.shade400,
      ),
    );
  }
}
