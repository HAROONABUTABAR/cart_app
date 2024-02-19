import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/constant/divider_global.dart';
import 'package:grocery_shop_app/model/cart_model.dart';
import 'package:grocery_shop_app/page/home_page/widget/let_order_fresh_section.dart';
import 'package:grocery_shop_app/page/home_page/widget/main_title_home_section.dart';
import 'package:provider/provider.dart';

import '../../components/grocety_item_tile.dart';
import '../cart_page/cart_page.dart';
import 'widget/fresh_items.dart';
import 'widget/person_with_location.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const CartPage())),
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PersonSection(),
            const SizedBox(
              height: 28,
            ),
            const MainTitleHomeSection(),
            const SizedBox(
              height: 4,
            ),
            const LetOrderFreshSection(),
            const SizedBox(
              height: 20,
            ),
            const DividerGlobal(),
            const SizedBox(
              height: 20,
            ),
            const FreshItemSection(),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: Platform.isAndroid ? 1 / 1.6 : 1 / 1.3,
                    ),
                    padding: const EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(index);
                        },
                        itemName: value.shopItem[index][0],
                        itemPrice: value.shopItem[index][1],
                        imagePath: value.shopItem[index][2],
                        color: value.shopItem[index][3],
                      );
                    },
                    itemCount: value.shopItem.length,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
