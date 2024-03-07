import 'package:activity_tracker/core/util/common_color.dart';
import 'package:activity_tracker/core/util/common_style.dart';
import 'package:activity_tracker/features/home/widgets/bottomfade_animation.dart';
import 'package:activity_tracker/features/home/widgets/custom_container.dart';
import 'package:activity_tracker/features/home/widgets/leftbounce_animation.dart';
import 'package:activity_tracker/features/home/widgets/rightbounce_animation.dart';
import 'package:activity_tracker/features/home/widgets/scalefade_animation.dart';
import 'package:activity_tracker/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi, Ashi",
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              // RichText(
              //   text: TextSpan(
              //     children: [
              //       TextSpan(
              //         text: "Hi, ",
              //         style: GoogleFonts.lato(
              //             fontSize: 30,
              //             fontWeight: FontWeight.w600,
              //             color: Colors.black),
              //       ),
              //       TextSpan(
              //         text: "Anshi",
              //         style: GoogleFonts.poppins(
              //             fontSize: 24,
              //             fontWeight: FontWeight.w600,
              //             color: Colors.black),
              //       ),
              //     ],
              //   ),
              // ),

              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.teal,
                          Colors.purple,
                        ])),
                clipBehavior: Clip.antiAlias,
                child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/girl.webp"),
                    )),
              ),
            ],
          ),
          Text(
            "Great start of the day, a little more",
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          Text(
            "to reach today's goals",
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 20,
          ),
          BounceFromLeftAnimation(
            delay: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's goals",
                  style: lablestyle,
                ),
                CupertinoButton(
                    child: Row(
                      children: [
                        Text("Edit goals", style: lablebuttonstyle),
                        const SizedBox(
                          width: 3,
                        ),
                        const Icon(
                          Iconsax.arrow_right_1,
                          size: 20,
                        )
                      ],
                    ),
                    onPressed: () {}),
              ],
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
                child: CustomContainer(
                  icon: CupertinoIcons.flame,
                  iconname: "Calories",
                  value: "996/1300 kcal",
                  percentage: "76%",
                  percentIndigator: 0.8,
                  color: firstcard,
                  downarrow: true,
                ),
              ),
              ScaleFadeAnimation(
                delay: 2,
                child: CustomContainer(
                  icon: CupertinoIcons.clock,
                  iconname: "Active time",
                  value: "204/120 min",
                  percentage: "76%",
                  percentIndigator: 0.6,
                  color: secondcard,
                  downarrow: false,
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
              ScaleFadeAnimation(
                delay: 2,
                child: CustomContainer(
                  icon: Icons.directions_walk_rounded,
                  iconname: "Steps",
                  value: "12200/12000",
                  percentage: "102%",
                  percentIndigator: 0.2,
                  color: thirdcard,
                  downarrow: false,
                ),
              ),
              ScaleFadeAnimation(
                delay: 2,
                child: CustomContainer(
                  icon: Icons.route_outlined,
                  iconname: "Distance",
                  value: "9,4/10,00km",
                  percentage: "94%",
                  percentIndigator: 0.9,
                  color: fourthcard,
                  downarrow: true,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CupertinoButton(
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
            child: Row(
              children: [
                const Spacer(),
                Text(
                  "Start workout",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                const Spacer(),
              ],
            ),
            onPressed: () {
              context.push(Routes.healthscreen.path);
            },
          ),
          const SizedBox(
            height: 5,
          ),
          BounceFromRightAnimation(
            delay: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's activities",
                  style: lablestyle,
                ),
                CupertinoButton(
                    child: Row(
                      children: [
                        Text("See history", style: lablebuttonstyle),
                        const SizedBox(
                          width: 3,
                        ),
                        const Icon(
                          Iconsax.arrow_right_1,
                          size: 20,
                        )
                      ],
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BounceFromBottomAnimation(
            delay: 0.3,
            child: SizedBox(
              height: 100,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Running",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal),
                        ),
                        const Icon(CupertinoIcons.arrow_right)
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(CupertinoIcons.clock),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "40 min 17 sec",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(CupertinoIcons.flame),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "140 kcal",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.route_outlined),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "4,2 km",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          BounceFromBottomAnimation(
            delay: 0.6,
            child: SizedBox(
              height: 100,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Yoga",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal),
                        ),
                        const Icon(CupertinoIcons.arrow_right)
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(CupertinoIcons.clock),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "10 min 12 sec",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(CupertinoIcons.flame),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "36 kcal",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
