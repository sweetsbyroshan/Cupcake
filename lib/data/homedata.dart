import 'package:flutter/material.dart';

class HomeData {
  static List<HomeDrawer> drawer = [
    HomeDrawer(isSelected: true, icon: Icons.shop, title: 'Bazaar'),
    HomeDrawer(isSelected: false, icon: Icons.compare_arrows, title: 'Trades'),
    HomeDrawer(
        isSelected: false, icon: Icons.list_alt_rounded, title: 'Ledger'),
    HomeDrawer(isSelected: false, icon: Icons.file_copy, title: 'Documents'),
  ];
  static List<bool> nTrade =
      List.generate(8, (index) => index % 3 == 0 ? true : false);
  static List<String> commodity =
      List.generate(4, (index) => 'Commodity $index');
  static List<String> location = List.generate(4, (index) => 'Location $index');
  static List<String> market = List.generate(4, (index) => 'Market $index');
}

class HomeDrawer {
  final IconData icon;
  final String title;
  bool isSelected;
  HomeDrawer({this.isSelected, this.icon, this.title});
}
