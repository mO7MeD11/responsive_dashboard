import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_image.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(AppImage.group),
        title: Text('Lekan Okeowo', style: AppStyle.semiBold16),
        subtitle: Text('demo@gmail.com', style: AppStyle.regular12),
      ),
    );
  }
}
