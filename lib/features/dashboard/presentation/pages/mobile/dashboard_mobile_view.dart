import 'package:app_template/features/dashboard/presentation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';


class DashboardMobilePage extends StatelessWidget {
  const DashboardMobilePage(
      {super.key,
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
      body: body,
      bottomNavigationBar: CustomBottomNavigationBar(
              onDestinationSelected: onDestinationSelected,
              selectedIndex: selectedIndex,
            ),
    );
  }
}
