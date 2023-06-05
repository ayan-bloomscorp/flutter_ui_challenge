import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String image;
  final String name;
  final double rating;
  final String designation;
  final int yearsOfExperience;

  const DoctorCard({
    required this.image,
    required this.name,
    required this.rating,
    required this.designation,
    required this.yearsOfExperience,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Container(
        width: 160,
        // padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepPurple.shade50,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(image),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: IntrinsicWidth(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  Text(
                    rating.toString(),
                    style: const TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            "$designation, $yearsOfExperience y.e",
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          )
        ]),
      ),
    );
  }
}
