import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenge/home/view/home.dart';
import 'package:flutter_ui_challenge/service/assets.dart';
import 'package:flutter_ui_challenge/service/constant.dart';
import 'package:flutter_ui_challenge/service/pallette.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SvgPicture.asset(Assets.welcomeScreenBgSVG),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  Constant.welcomeScreenTitle,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Pallette.darkBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 20.0,
                  width: double.infinity,
                ),
                Text(
                  Constant.welcomeScreenDescription,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Pallette.darkBlueColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(
                  height: 40.0,
                  width: double.infinity,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Pallette.purpleColor,
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: const Text(
                      Constant.welcomeScreenCtaButtonLabel,
                      style: TextStyle(
                        fontSize: 18,
                        color: Pallette.whiteColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
