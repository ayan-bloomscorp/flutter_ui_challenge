import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/home/components/doctor_card.dart';
import 'package:flutter_ui_challenge/service/assets.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          DoctorCard(
            image: Assets.doctorOnePNG,
            name: "Dr. Arlene McCoy",
            designation: "Therapist",
            yearsOfExperience: 7,
            rating: 4.9,
          ),
          DoctorCard(
            image: Assets.doctorTwoPNG,
            name: "Dr. Albert Flores",
            designation: "Surgeon",
            yearsOfExperience: 5,
            rating: 4.8,
          ),
        ],
      ),
    );
  }
}
