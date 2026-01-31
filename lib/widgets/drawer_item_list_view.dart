import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/drawer_model.dart';
import 'package:responsive_dashboard/utils/app_image.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListVew extends StatefulWidget {
  const DrawerItemListVew({super.key});

  static const items = [
    DrawerModel(title: 'Dashboard', image: AppImage.category),
    DrawerModel(title: 'My Transaction', image: AppImage.convert),
    DrawerModel(title: 'Statistics', image: AppImage.graph),
    DrawerModel(title: 'Wallet Account', image: AppImage.wallet),
    DrawerModel(title: 'My Investments', image: AppImage.chart),
  ];

  @override
  State<DrawerItemListVew> createState() => _DrawerItemListVewState();
}

class _DrawerItemListVewState extends State<DrawerItemListVew> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: DrawerItemListVew.items.length,

      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: DrawerItem(
              drawerModel: DrawerItemListVew.items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
