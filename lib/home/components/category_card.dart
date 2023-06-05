import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String icon;
  final String categoryName;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.deepPurple.shade50,
        ),
        child: Row(children: [
          Image.asset(icon, height: 30),
          const SizedBox(width: 10.0),
          Text(
            categoryName,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
}
