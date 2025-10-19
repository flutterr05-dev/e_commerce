import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/view/pages/home/components/choose_brands.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            /// <======== Welcome Text and Search Bar ========>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Welcome to Laza.",
                    style: TextStyle(
                      fontSize: 15,
                      color: CustomColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffF5F6FA),
                            filled: true,
                            contentPadding: EdgeInsets.all(15),
                            prefixIconConstraints: BoxConstraints(
                              maxHeight: 20,
                              maxWidth: 40,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/search.svg",
                              ),
                            ),
                            hintText: "Search",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColors.primaryColor,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Voice.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            /// <======== Choose Brand ========>
            ChooseBrands(),

            SizedBox(height: 20,
              ),

          ],
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: CircleAvatar(
          backgroundColor: Color(0xffF5F6FA),
          child: SvgPicture.asset("assets/icons/menu.svg"),
        ),
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundColor: Color(0xffF5F6FA),
            child: SvgPicture.asset("assets/icons/cart.svg"),
          ),
        ),
      ],
    );
  }
}
