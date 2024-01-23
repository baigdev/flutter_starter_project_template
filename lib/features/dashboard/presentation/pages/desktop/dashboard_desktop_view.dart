import 'package:app_template/utils/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardDesktopPage extends StatelessWidget {
  const DashboardDesktopPage({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            leading: SvgPicture.asset(
              "assets/icons/app_icon.svg",
              semanticsLabel: 'App Logo',
            ),
            extended: true,
            trailing: Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child:IconButton(
                       tooltip: "Logout",
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
              ),
            ),
                ),
              ),
            ),
            destinations: const [
              NavigationRailDestination(
                label: Text("Home"),
                icon: Icon(Icons.home),
                padding: EdgeInsets.all(
                  AppUtils.paddingCard,
                ),
              ),
              NavigationRailDestination(
                label: Text("User"),
                icon: Icon(Icons.person),
                padding: EdgeInsets.all(
                  AppUtils.paddingCard,
                ),
              ),
              NavigationRailDestination(
                label: Text("Department"),
                icon: Icon(Icons.house),
                padding: EdgeInsets.all(
                  AppUtils.paddingCard,
                ),
              ),
              NavigationRailDestination(
                label: Text("Categories"),
                icon: Icon(Icons.category),
                padding: EdgeInsets.all(
                  AppUtils.paddingCard,
                ),
              ),
              NavigationRailDestination(
                label: Text("Projects"),
                icon: Icon(Icons.work),
                padding: EdgeInsets.all(
                  AppUtils.paddingCard,
                ),
              ),
            ],
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
          ),
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}
