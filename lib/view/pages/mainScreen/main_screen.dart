import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/view/pages/cart/cart_screen.dart';
import 'package:e_commerce/view/pages/home/home_screen.dart';
import 'package:e_commerce/view/pages/wishlist/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

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

  List<Widget> pages = <Widget>[HomeScreen(), WishList(), CartScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _customDrawer(),
      key: scaffoldKey,
      drawerScrimColor: Color(0xff1D1E20).withOpacity(0.40),
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

  _customDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffF5F6FA),
                child: SvgPicture.asset("assets/icons/menu_arrow.svg"),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xffF5F6FA),
                    child: SvgPicture.asset("assets/icons/logo.svg",color: Colors.purpleAccent,),
                  ),
                  SizedBox(width: 20,),
                  Expanded(child: Text("Zakaria")),
                ],
              ),

              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account INFO"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
