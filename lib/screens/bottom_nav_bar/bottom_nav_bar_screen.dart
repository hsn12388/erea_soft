import 'package:eraasoft_task/screens/account/account_screen.dart';
import 'package:eraasoft_task/screens/auth/sign_up.dart';
import 'package:eraasoft_task/screens/cart/cart_screen.dart';
import 'package:eraasoft_task/screens/explore/explore_screen.dart';
import 'package:eraasoft_task/screens/favoruite/favourite_screen.dart';
import 'package:eraasoft_task/screens/home/home_screen.dart';
import 'package:eraasoft_task/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int activeIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: activeIndex,
        selectedItemColor: Color(0xff53B175),
        onTap: (Index) {
          setState(() {
            activeIndex = Index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/sho.svg',
              color: activeIndex == 0 ? Color(0xff53B175) : null,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/explore.svg',
              color: activeIndex == 1 ? Color(0xff53B175) : null,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: activeIndex == 2 ? Color(0xff53B175) : null,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/favorite.svg',
              color: activeIndex == 3 ? Color(0xff53B175) : null,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/account.svg',
              color: activeIndex == 4 ? Color(0xff53B175) : null,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: screens[activeIndex],
    );
  }
}
