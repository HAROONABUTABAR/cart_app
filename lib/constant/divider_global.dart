import 'package:flutter/material.dart';

class DividerGlobal extends StatelessWidget {
  const DividerGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 21),
      child: Divider(
        thickness: 2,
      ),
    );
  }
}
