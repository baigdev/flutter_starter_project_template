import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';

class AddUserView extends StatefulWidget {
  const AddUserView({super.key});

  @override
  State<AddUserView> createState() => _AddUserViewState();
}

class _AddUserViewState extends State<AddUserView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobile: Container(),
    );
  }
}
