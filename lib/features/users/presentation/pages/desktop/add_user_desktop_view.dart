import 'package:app_template/utils/constant/constant.dart';
import 'package:flutter/material.dart';

import '../../widgets/add_user_form.dart';

class AddUserDesktopView extends StatelessWidget {
  const AddUserDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppUtils.paddingAllSides),
          child: AddUserForm(),
        ),
      ),
    );
  }
}
