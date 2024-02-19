import 'package:flutter/material.dart';

class MainTitleHomeSection extends StatelessWidget {
  const MainTitleHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Text(
        "Good moming , Haroon",
      ),
    );
  }
}
