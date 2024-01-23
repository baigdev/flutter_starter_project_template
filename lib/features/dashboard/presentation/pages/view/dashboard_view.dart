
import 'package:app_template/features/dashboard/presentation/pages/desktop/dashboard_desktop_view.dart';
import 'package:app_template/features/dashboard/presentation/pages/mobile/dashboard_mobile_view.dart';
import 'package:app_template/features/dashboard/presentation/pages/tablet/dashboard_tablet_view.dart';
import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) async {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobile: DashboardMobilePage(
        body: navigationShell,
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
      ),
      desktop: DashboardDesktopPage(
        body: navigationShell,
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
      ),
      tablet: DashboardTabletPage(
        body: navigationShell,
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
