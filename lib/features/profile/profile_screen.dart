import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
