import 'package:flutter/material.dart';
import 'package:grocery_shop_app/page/home_page/home_page.dart';
import 'package:grocery_shop_app/page/intro_page/widget/logo_intro_section.dart';
import 'package:grocery_shop_app/page/intro_page/widget/sub_title_intro_section.dart';
import 'package:grocery_shop_app/page/intro_page/widget/title_intro_section.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'widget/button_intor_section.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          LogoIntroSection(),
          TitleInfroSection(),
          SizedBox(
            height: 24,
          ),
          SubTitleIntroSection(),
          Spacer(),
          ButtonIntro(),
          Spacer(),
        ],
      ),
    );
  }
}

class MainBottonNavBar extends StatelessWidget {
  const MainBottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: SalomonBottomBar(items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Colors.purple,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.favorite_border),
          title: Text("Likes"),
          selectedColor: Colors.pink,
        ),

        /// Search
        SalomonBottomBarItem(
          icon: Icon(Icons.search),
          title: Text("Search"),
          selectedColor: Colors.orange,
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile"),
          selectedColor: Colors.teal,
        ),
      ]),
    );
  }
}
