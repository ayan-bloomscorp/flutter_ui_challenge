import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/service/assets.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello,",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10.0),
            Text(
              "Jerome Bell",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage(Assets.userProfilePicPNG),
        )
      ],
    );
  }
}
