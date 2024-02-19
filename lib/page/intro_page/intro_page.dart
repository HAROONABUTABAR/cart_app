import 'package:flutter/material.dart';
import 'package:grocery_shop_app/page/intro_page/widget/logo_intro_section.dart';
import 'package:grocery_shop_app/page/intro_page/widget/sub_title_intro_section.dart';
import 'package:grocery_shop_app/page/intro_page/widget/title_intro_section.dart';

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
