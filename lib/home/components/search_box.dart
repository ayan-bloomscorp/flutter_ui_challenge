import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/service/constant.dart';
import 'package:flutter_ui_challenge/service/pallette.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Pallette.darkBlueColor),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.deepPurple[50],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
        hintText: Constant.homeSearchBoxHint,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: const Icon(Icons.search_rounded),
        prefixIconColor: Colors.grey.shade400,
      ),
    );
  }
}
