import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenge/service/assets.dart';
import 'package:flutter_ui_challenge/service/constant.dart';
import 'package:flutter_ui_challenge/service/pallette.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Pallette.pinkColor,
      ),
      height: 145,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
            width: 130,
            child: SvgPicture.asset(Assets.homeBannerSVG),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: SizedBox(
              width: 100,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      Constant.homeBannerTitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text(Constant.homeBannerDescription),
                    const SizedBox(height: 5.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Pallette.purpleColor,
                          // padding: const EdgeInsets.symmetric(vertical: 20.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: const Text(Constant.homeBannerCtaButtonLabel),
                      ),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
