import 'package:flutter/material.dart';

class PersonSection extends StatelessWidget {
  const PersonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              Text("Amman , Jordan")
            ],
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("lib/images/person.jpg"),
          )
        ],
      ),
    );
  }
}
