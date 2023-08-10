import 'package:bazaar/views/app_pages/cart_page.dart';
import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/widgets/category_widget.dart';
import 'package:bazaar/views/widgets/famous_stores_widget.dart';
import 'package:bazaar/views/widgets/search_widget.dart';
import 'package:bazaar/views/widgets/special_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'app_pages/home_page.dart';
import 'app_pages/favorit_page.dart';
import 'app_pages/stores_page.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          index = value;
          setState(() {});
        },
        children: [
          Padding(padding: const EdgeInsets.all(10), child: HomePage()),
          CartPage(),
          StoresPage(),
          FavoritPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: CustomColors.orange,
          selectedItemColor: CustomColors.redColor,
          currentIndex: index,
          onTap: (value) {
            index = value;
            // // pageController.animateToPage(index,
            // //     duration: Duration(milliseconds: 10),
            // //     curve: Curves.bounceInOut);
            pageController.jumpToPage(index);
            setState(() {});
          },
          items: [
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.home_outlined,
            //       // color: Colors.black,
            //     ),
            //     label: "home"),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.shopping_cart_outlined,
            //       // color: Colors.black,
            //     ),
            //     label: "home"),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.store_mall_directory_outlined,
            //       // color: Colors.black,
            //     ),
            //     label: "home"),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.favorite_border,
            //       // color: Colors.black,
            //     ),
            // label: "home"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset('assets/images/home_icon.svg'),
                // icon: SvgPicture.asset('assets/images/home_icon.svg'),
                icon:
                    SvgPicture.asset('assets/images/unselected_home_icon.svg'),
                // Icon(Icons.home_outlined),
                label: "home"),

            BottomNavigationBarItem(
                activeIcon:
                    SvgPicture.asset('assets/images/selected_cart_icon.svg'),
                icon: SvgPicture.asset('assets/images/order_icon.svg'),
                label: "cart"),

            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/shop_store.svg'),
                label: "market"),

            BottomNavigationBarItem(
                activeIcon:
                    SvgPicture.asset('assets/images/selected_favorit_icon.svg'),
                icon: SvgPicture.asset('assets/images/heart_icon.svg'),
                label: "favorit"),
          ]),
    );
  }
}
