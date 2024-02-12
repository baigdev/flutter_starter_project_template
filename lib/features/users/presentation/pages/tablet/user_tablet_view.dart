import 'package:app_template/utils/constant/constant.dart';
import 'package:app_template/utils/navigation/app_navigations.dart';
import 'package:flutter/material.dart';

import '../../widgets/user_grid_view.dart';

class UserTabletView extends StatelessWidget {
  const UserTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
      ),
      body:const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppUtils.paddingAllSides),
          child: UserResponsiveGrid(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppNavigations().navigateFromUsersToAddUser(context: context);
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
