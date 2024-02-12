import 'package:app_template/features/users/presentation/pages/mobile/add_user_mobile_view.dart';
import 'package:app_template/features/users/presentation/pages/tablet/add_user_tablet_view.dart';
import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';

import 'desktop/add_user_desktop_view.dart';

class AddUserView extends StatefulWidget {
  const AddUserView({super.key});

  @override
  State<AddUserView> createState() => _AddUserViewState();
}

class _AddUserViewState extends State<AddUserView> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobile: AddUserMobileView(),
      desktop: AddUserDesktopView(),
      tablet: AddUserTabletView(),
    );
  }
}
