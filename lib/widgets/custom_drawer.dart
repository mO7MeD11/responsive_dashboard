import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/drawer_model.dart';
import 'package:responsive_dashboard/utils/app_image.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_item_list_view.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: UserInfoListTile()),
            DrawerItemListVew(),

            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox(height: 10)),
                  DrawerItem(
                    drawerModel: DrawerModel(
                      title: 'Setting system',
                      image: AppImage.setting,
                    ),
                    isActive: false,
                  ),
                  DrawerItem(
                    drawerModel: DrawerModel(
                      title: 'Logout account',
                      image: AppImage.logout,
                    ),
                    isActive: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
