import 'package:app_template/utils/constant/constant.dart';
import 'package:flutter/material.dart';

import '../../widgets/add_user_form.dart';

class AddUserTabletView extends StatelessWidget {
  const AddUserTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Add User"),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppUtils.paddingAllSides),
          child: AddUserForm(),
        ),
      ),
    );
  }
}
