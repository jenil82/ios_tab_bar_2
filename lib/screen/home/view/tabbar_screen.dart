import 'package:flutter/cupertino.dart';
import 'package:ios_tab_bar_2/screen/home/view/product_screen.dart';
import 'package:ios_tab_bar_2/screen/home/view/search_screen.dart';

import 'cart_screen.dart';


class TabbarScreen extends StatefulWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {
  List screen = [
    ProductScreen(),
    SearchScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white.withOpacity(0.95),
          border: Border(
            top: BorderSide(
              color: CupertinoColors.black.withOpacity(0.1),
              width: 1,
            ),
          ),
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,color: CupertinoColors.black,
                ),
                label: "Products"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,color: CupertinoColors.black,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.shopping_cart,color: CupertinoColors.black,
                ),
                label: "Cart"),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screen[index];
        },
      ),
    );
  }
}