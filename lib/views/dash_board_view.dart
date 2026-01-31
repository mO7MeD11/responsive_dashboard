import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/desktop_View.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => DesktopView(),
      ),
    );
  }
}
