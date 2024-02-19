import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LetOrderFreshSection extends StatelessWidget {
  const LetOrderFreshSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Text(
        "Let's order fresh items for you",
        style: GoogleFonts.barlowCondensed().copyWith(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
