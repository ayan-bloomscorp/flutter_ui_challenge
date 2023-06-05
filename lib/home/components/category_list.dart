import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/home/components/category_card.dart';
import 'package:flutter_ui_challenge/service/assets.dart';
import 'package:flutter_ui_challenge/service/constant.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryCard(
            icon: Assets.dentistIconPNG,
            categoryName: Constant.dentistLabel,
          ),
          CategoryCard(
            icon: Assets.surgeryIconPNG,
            categoryName: Constant.surgeryLabel,
          ),
          CategoryCard(
            icon: Assets.therapyIconPNG,
            categoryName: Constant.therapyLabel,
          )
        ],
      ),
    );
  }
}
