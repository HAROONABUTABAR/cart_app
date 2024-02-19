import 'package:flutter/material.dart';
import 'package:grocery_shop_app/page/intro_page/intro_page.dart';

import '../../home_page/home_page.dart';

class ButtonIntro extends StatelessWidget {
  const ButtonIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: GestureDetector(
        onTap: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const MainBottonNavBar(),
            ),
            (route) => false),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(24),
          child: const Center(
            child: Text(
              "Get Started",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
