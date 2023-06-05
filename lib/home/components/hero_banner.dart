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
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        // SvgPicture.asset(
        //   Assets.homeBannerSVG,
        //   width: 200,
        // ),
        // Expanded(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const Text(Constant.homeBannerTitle),
        //       const Text(Constant.homeBannerDescription),
        //       ElevatedButton(
        //         onPressed: () {},
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Pallette.purpleColor,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10.0),
        //           ),
        //         ),
        //         child: const Text(
        //           Constant.homeBannerCtaButtonLabel,
        //           style: TextStyle(
        //             fontSize: 13,
        //             color: Pallette.whiteColor,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ]),
    );
  }
}
