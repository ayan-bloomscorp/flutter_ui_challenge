import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/home/components/category_list.dart';
import 'package:flutter_ui_challenge/home/components/doctor_list.dart';
import 'package:flutter_ui_challenge/home/components/hero_banner.dart';
import 'package:flutter_ui_challenge/home/components/search_box.dart';
import 'package:flutter_ui_challenge/home/components/top_bar.dart';
import 'package:flutter_ui_challenge/navigation/bottom_navigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              TopBar(),
              SizedBox(height: 25),
              HeroBanner(),
              SizedBox(height: 25),
              SearchBox(),
              SizedBox(height: 25),
              CategoryList(),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor list",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              DoctorList()
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
