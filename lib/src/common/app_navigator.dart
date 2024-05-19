// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:supportwise/src/Views/home_page.dart';
import 'package:supportwise/src/Views/setting_screen.dart';

import '../ProductsScreen/product_screen.dart';
import '../Views/subscription_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          indicatorShape: CircleBorder(),
          backgroundColor: Colors.grey,
          indicatorColor: Colors.white,
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/icons/li_home.svg',
                ),
                label: ''),
            NavigationDestination(
                icon: SvgPicture.asset('assets/icons/cart.svg'), label: ''),
            NavigationDestination(
                icon: SvgPicture.asset('assets/icons/Network.svg'), label: ''),
            NavigationDestination(
                icon: SvgPicture.asset('assets/icons/li_user.svg'), label: ''),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    HomePage(),
    SubscriptionScreen(),
    ProductScreen(),
    SettingScreen(),
  ];
}
