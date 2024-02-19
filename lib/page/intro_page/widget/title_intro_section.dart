import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleInfroSection extends StatelessWidget {
  const TitleInfroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        "We deliver groceries at your doorstep",
        style: GoogleFonts.barlowCondensed().copyWith(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
