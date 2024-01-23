import 'package:app_template/utils/constant/constant.dart';
import 'package:app_template/utils/extensions/context_extensions.dart';
import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      selectedLabelStyle: context.theme.textTheme.titleMedium?.copyWith(
        fontSize: getResponsiveValue(context, 14),
        fontWeight: AppFontWeight().semiBoldFontWeight,
      ),
      unselectedLabelStyle: context.theme.textTheme.titleMedium?.copyWith(
        fontSize: getResponsiveValue(context, 14),
        fontWeight: AppFontWeight().semiBoldFontWeight,
      ),
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: const Icon(
            Icons.home,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.home,
            color: context.theme.primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: "User",
          icon: const Icon(
            Icons.person,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.person,
            color: context.theme.primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: "Department",
          icon: const Icon(
            Icons.house,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.house,
            color: context.theme.primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: "Categories",
          icon: const Icon(
            Icons.category,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.category,
            color: context.theme.primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: "Projects",
          icon: const Icon(
            Icons.work,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.work,
            color: context.theme.primaryColor,
          ),
        ),
      ],
      onTap: onDestinationSelected,
    );
  }
}
