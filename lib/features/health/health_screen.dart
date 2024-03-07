import 'package:activity_tracker/core/util/common_color.dart';
import 'package:activity_tracker/core/util/common_style.dart';
import 'package:activity_tracker/features/health/widgets/custom_card.dart';
import 'package:activity_tracker/features/home/widgets/bottomfade_animation.dart';
import 'package:activity_tracker/features/home/widgets/leftbounce_animation.dart';
import 'package:activity_tracker/features/home/widgets/scalefade_animation.dart';
import 'package:activity_tracker/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
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
            const SizedBox(
              height: 20,
            ),
            ScaleFadeAnimation(
              delay: 2,
              child: SizedBox(
                height: 300,
                width: 420,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: SizedBox(
                        height: 300,
                        width: 420,
                        child: Image.asset("assets/icons/wave.png"),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 160,
                      child: Text(
                        "53.55",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      bottom: 190,
                      child: Text(
                        "61.79",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Positioned(
                      left: 250,
                      bottom: 180,
                      child: Text(
                        "59.13",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Positioned(
                      left: 320,
                      bottom: 180,
                      child: Text(
                        "58.91",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 210,
                      child: Text(
                        "69.69",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
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
            BounceFromBottomAnimation(
              delay: 0.8,
              child: ExpansionTile(
                title: Text("BMI",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                // trailing: const Icon(Iconsax.arrow_down),
                shape: const RoundedRectangleBorder(),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Normal",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "19,0",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )
                  ],
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        LinearProgressIndicator(
                          value: 0.3,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          minHeight: 4,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.black),
                          backgroundColor: Colors.transparent.withOpacity(0.1),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "LOW",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "< 18,5",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "NORMAL",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "< 20,5",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "INCREASED",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "< 25,0",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "HIGH",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "< 30,0",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BounceFromBottomAnimation(
              delay: 0.5,
              child: ExpansionTile(
                title: Text("Body fat",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                // trailing: Icon(Iconsax.arrow_down),
                shape: const RoundedRectangleBorder(),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text("LOW",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "23,0 %",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )
                  ],
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        LinearProgressIndicator(
                          value: 0.5,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          minHeight: 4,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.black),
                          backgroundColor: Colors.transparent.withOpacity(0.1),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "LOW",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "< 18,5",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "NORMAL",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "< 20,5",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "INCREASED",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "< 25,0",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "HIGH",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "< 30,0",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    ));
  }
}
