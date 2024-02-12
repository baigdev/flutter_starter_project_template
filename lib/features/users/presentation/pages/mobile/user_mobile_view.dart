import 'package:app_template/utils/constant/constant.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/navigation/app_navigations.dart';
import '../../widgets/user_grid_view.dart';

class UserMobileView extends StatelessWidget {
  const UserMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppUtils.paddingAllSides),
          child: UserResponsiveGrid(),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
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
