import 'package:flutter/material.dart';

class FreshItemSection extends StatelessWidget {
  const FreshItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        "Fresh Items",
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
