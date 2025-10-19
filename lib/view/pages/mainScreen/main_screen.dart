import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/view/pages/cart/cart_screen.dart';
import 'package:e_commerce/view/pages/home/home_screen.dart';
import 'package:e_commerce/view/pages/wishlist/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = <Widget>[
    HomeScreen(),
    WishList(),
    CartScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: selectedIndex == 0
                  ? CustomColors.primaryColor
                  : Color(0xff8F959E),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/fev.svg',
              color: selectedIndex == 1
                  ? CustomColors.primaryColor
                  : Color(0xff8F959E),
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: selectedIndex == 2
                  ? CustomColors.primaryColor
                  : Color(0xff8F959E),
            ),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
