import 'package:activity_tracker/core/util/common_color.dart';
import 'package:activity_tracker/core/util/common_style.dart';
import 'package:activity_tracker/features/home/widgets/bottomfade_animation.dart';
import 'package:activity_tracker/features/home/widgets/leftbounce_animation.dart';
import 'package:activity_tracker/features/home/widgets/rightbounce_animation.dart';
import 'package:activity_tracker/features/home/widgets/scalefade_animation.dart';
import 'package:activity_tracker/features/today/widgets/Custom_card.dart';
import 'package:activity_tracker/features/today/widgets/custom_linearprogess.dart';
import 'package:activity_tracker/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CupertinoButton(
                    child: Row(
                      children: [
                        const Icon(
                          Iconsax.arrow_left_1,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text("See Activities", style: lablebuttonstyle),
                      ],
                    ),
                    onPressed: () {
                      context.push(Routes.homescreen.path);
                    }),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  "Today",
                  style: lablestyle,
                ),
              ],
            ),
            SizedBox(
              height: 430,
              width: 400,
              child: Stack(
                children: [
                  Positioned(
                      right: -40,
                      top: 170,
                      child: LottieBuilder.asset(
                        "assets/icons/marker.json",
                        height: 120,
                        width: 120,
                      )),
                  Positioned(
                      right: 135,
                      top: -30,
                      child: LottieBuilder.asset(
                        "assets/icons/marker2.json",
                        height: 120,
                        width: 120,
                      )),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 380,
                      width: 380,
                      child: ScaleFadeAnimation(
                          delay: 2,
                          child: Image.asset("assets/icons/vector_line.png")),
                    ),
                  ),
                ],
              ),
            ),
            BounceFromLeftAnimation(
              delay: 0.5,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Running",
                  style: lablestyle,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BounceFromLeftAnimation(
                  delay: 1,
                  child: CustomCard(
                    icon: CupertinoIcons.clock,
                    iconname: "Duration",
                    value: "41 min 7 Sec",
                    color: secondcard,
                  ),
                ),
                BounceFromLeftAnimation(
                  delay: 0.5,
                  child: CustomCard(
                    icon: CupertinoIcons.flame,
                    iconname: "Calories",
                    value: "140 kcal",
                    color: firstcard,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BounceFromRightAnimation(
                  delay: 0.5,
                  child: CustomCard(
                    icon: Icons.route_outlined,
                    iconname: "Distance",
                    value: "4.2 km",
                    color: fourthcard,
                  ),
                ),
                BounceFromRightAnimation(
                  delay: 1,
                  child: CustomCard(
                    icon: Icons.directions_walk_rounded,
                    iconname: "Steps",
                    value: "2068",
                    color: thirdcard,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Spits(),
            )
          ],
        ),
      ),
    ));
  }
}

Widget Spits() {
  return Column(
    children: [
      Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          "Splits",
          style: lablestyle,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      BounceFromBottomAnimation(
        delay: 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("1 km", style: lablebuttonstyle),
            Text("11:33", style: lablebuttonstyle),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      BounceFromBottomAnimation(
        delay: 0.4,
        child: AnimatedLinearProgressIndicator(
          delay: 2,
          value: 0.3,
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      BounceFromBottomAnimation(
        delay: 0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("2 km", style: lablebuttonstyle),
            Text("12:00", style: lablebuttonstyle),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      BounceFromBottomAnimation(
        delay: 0.8,
        child: AnimatedLinearProgressIndicator(
          delay: 2,
          value: 0.6,
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      BounceFromBottomAnimation(
        delay: 1.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("3 km", style: lablebuttonstyle),
            Text("12:33", style: lablebuttonstyle),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      BounceFromBottomAnimation(
        delay: 1.2,
        child: AnimatedLinearProgressIndicator(
          delay: 2,
          value: 0.4,
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      BounceFromBottomAnimation(
        delay: 1.6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("4 km", style: lablebuttonstyle),
            Text("01:12", style: lablebuttonstyle),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      BounceFromBottomAnimation(
        delay: 1.6,
        child: AnimatedLinearProgressIndicator(
          delay: 2,
          value: 0.8,
        ),
      ),
      const SizedBox(
        height: 100,
      ),
    ],
  );
}
