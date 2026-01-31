import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/model/drawer_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerModel,
    required this.isActive,
  });

  final DrawerModel drawerModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: Text(
        drawerModel.title,
        style: isActive
            ? AppStyle.semiBold16.copyWith(
                color: Color(0xff4EB7F2),
                fontWeight: FontWeight.w700,
              )
            : AppStyle.regular16,
      ),
      trailing: isActive
          ? Container(
              width: 3.27,
              height: 48,
              decoration: BoxDecoration(color: Color(0xff4EB7F2)),
            )
          : SizedBox(),
    );
  }
}
