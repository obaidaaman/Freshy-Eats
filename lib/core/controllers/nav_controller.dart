import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/views/home/home_page.dart';

import '../../views/cart/cart_page.dart';
import '../../views/menu/menu_page.dart';
import '../../views/profile/profile_page.dart';
import '../../views/save/save_page.dart';

class NavController extends GetxController {
  final _selectedIndex = 0.obs;
  final currentPage = Rx<Widget>(HomePage());

  int get selectedIndex => _selectedIndex.value;

  List<Widget> get pages => [
        const HomePage(),
        const MenuPage(),
        const CartPage(isHomePage: true),
        const SavePage(isHomePage: false),
        const ProfilePage(),
      ];

  void goToPage(int index) {
    if (index != 2) {
      _selectedIndex.value = index;
      currentPage.value = pages[index];
    }
  }
}
