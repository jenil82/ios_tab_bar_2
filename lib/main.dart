import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_tab_bar_2/screen/home/provider/cart_provider.dart';
import 'package:ios_tab_bar_2/screen/home/provider/product_provider.dart';
import 'package:ios_tab_bar_2/screen/home/provider/search_provider.dart';
import 'package:ios_tab_bar_2/screen/home/view/cart_screen.dart';
import 'package:ios_tab_bar_2/screen/home/view/product_screen.dart';
import 'package:ios_tab_bar_2/screen/home/view/search_screen.dart';
import 'package:ios_tab_bar_2/screen/home/view/tabbar_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: CupertinoApp(
        theme: CupertinoThemeData(
          brightness: Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (p0) => TabbarScreen(),
          'product_screen': (p0) => ProductScreen(),
          'search_screen': (p0) => SearchScreen(),
          'cart_screen': (p0) => CartScreen(),
        },
      ),
    ),
  );
}