import 'package:flutter/material.dart';

import '../../../../../utils/localizations/app_localizations.dart';

class AuthenticationTabletView extends StatelessWidget {
  const AuthenticationTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          translate(context)?.app_name ?? "Sample App Bar",
        ),
      ),
      body: Center(
        child: Text(
          translate(context)?.auth_heading ?? "Authentication Mobile View",
        ),
      ),
    );
  }
}
