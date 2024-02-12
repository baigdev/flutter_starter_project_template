import 'package:app_template/utils/constant/constant.dart';
import 'package:app_template/utils/navigation/app_navigations.dart';
import 'package:flutter/material.dart';

import '../../widgets/user_grid_view.dart';

class UsersDesktopView extends StatelessWidget {
  const UsersDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppUtils.paddingAllSides),
          child: UserResponsiveGrid(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          AppNavigations().navigateFromUsersToAddUser(context: context);
        },
        icon: const Icon(
          Icons.add,
        ),
        label:const Text("Add User",),
      ),
    );
  }
}
