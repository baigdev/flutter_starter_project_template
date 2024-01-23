import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardTabletPage extends StatelessWidget {
  const DashboardTabletPage({
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
            trailing: Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child:IconButton(
              onPressed: () {},
              tooltip: "Logout",
              icon: const Icon(
                Icons.logout,
              ),
            ),
                ),
              ),
            ),
            extended: false,
            labelType: NavigationRailLabelType.all,
            
            destinations: const [
              NavigationRailDestination(
                  label: Text("Home"), icon: Icon(Icons.home)),
              NavigationRailDestination(
                  label: Text("User"), icon: Icon(Icons.person)),
              NavigationRailDestination(
                label: Text("Department"),
                icon: Icon(Icons.house),
              ),
              NavigationRailDestination(
                label: Text("Categories"),
                icon: Icon(Icons.category),
              ),
              NavigationRailDestination(
                label: Text("Projects"),
                icon: Icon(Icons.work),
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
