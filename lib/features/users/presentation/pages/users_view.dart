import 'package:app_template/features/users/presentation/pages/desktop/user_desktop_view.dart';
import 'package:app_template/features/users/presentation/pages/tablet/user_tablet_view.dart';
import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';

import 'mobile/user_mobile_view.dart';

class UsersView extends StatefulWidget {
  const UsersView({super.key});

  @override
  State<UsersView> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobile: UserMobileView(),
      tablet: UserTabletView(),
      desktop: UsersDesktopView(),
    );
  }
}
