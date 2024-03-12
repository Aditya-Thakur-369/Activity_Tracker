// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:activity_tracker/features/today/widgets/custom_linearprogess.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  IconData icon;
  String iconname;
  String value;
  double percentage;
  double percentIndigator;
  Color color;
  bool downarrow;
  CustomContainer({
    Key? key,
    required this.icon,
    required this.iconname,
    required this.value,
    required this.percentage,
    required this.percentIndigator,
    required this.color,
    required this.downarrow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  iconname,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  value,
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            TweenAnimationBuilder<double>(
              duration: const Duration(seconds: 2),
              tween: Tween<double>(begin: 0, end: percentage),
              builder: (context, value, child) {
                return Row(
                  children: [
                    Text(
                      "${value.toStringAsFixed(0)} %",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      downarrow
                          ? CupertinoIcons.down_arrow
                          : CupertinoIcons.arrow_up,
                      color: Colors.black,
                    )
                  ],
                );
              },
            ),
            AnimatedLinearProgressIndicator(value: percentIndigator, delay: 2)
          ],
        ),
      ),
    );
  }
}
