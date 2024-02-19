import 'package:flutter/material.dart';

class LogoIntroSection extends StatelessWidget {
  const LogoIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 80.0, right: 80, bottom: 40, top: 160),
      child: Image.asset(
        "lib/images/avocado.png",
      ),
    );
  }
}
