import 'package:app_template/features/home/presentation/pages/mobile/home_mobile_view.dart';
import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../desktop/home_desktop_view.dart';
import '../tablet/home_tablet_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobile: HomeMobileView(),
      desktop: HomeDesktopView(),
      tablet: HomeTabletView(),
    );
  }
}
