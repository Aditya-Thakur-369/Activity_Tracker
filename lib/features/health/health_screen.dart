import 'package:activity_tracker/core/util/common_color.dart';
import 'package:activity_tracker/core/util/common_style.dart';
import 'package:activity_tracker/features/health/widgets/custom_card.dart';
import 'package:activity_tracker/features/home/widgets/custom_container.dart';
import 'package:activity_tracker/features/home/widgets/leftbounce_animation.dart';
import 'package:activity_tracker/features/home/widgets/scalefade_animation.dart';
import 'package:activity_tracker/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 170,
              ),
              Text(
                "Health",
                style: lablestyle,
              ),
              const Spacer(),
              CupertinoButton(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 3,
                      ),
                      Text("Edit goals", style: lablebuttonstyle),
                      const Icon(
                        Iconsax.arrow_right_1,
                        size: 20,
                      ),
                    ],
                  ),
                  onPressed: () {
                    context.push(Routes.homescreen.path);
                  }),
            ],
          ),
          BounceFromLeftAnimation(
            delay: 0.5,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Weight",
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
              ScaleFadeAnimation(
                delay: 2,
                child: CustomHealthCard(
                  icon: Iconsax.weight,
                  iconname: "Today",
                  value: "+ 4.25 kg",
                  percentage: "51.50 kg",
                  percentIndigator: 0.2,
                  color: thirdcard,
                  downarrow: true,
                ),
              ),
              ScaleFadeAnimation(
                delay: 2,
                child: CustomHealthCard(
                  icon: Iconsax.eye,
                  iconname: "Your goal",
                  value: "+ 3.5 kg",
                  percentage: "48.00 kg",
                  percentIndigator: 0.9,
                  color: fourthcard,
                  downarrow: false,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          BounceFromLeftAnimation(
            delay: 0.5,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Diagnostics",
                style: lablestyle,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            width: 420,
            child: Image.asset("assets/icons/wave.png"),
          ),
        ],
      ),
    ));
  }
}
