import 'package:app_template/utils/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

class AuthenticationMobileView extends StatelessWidget {
  const AuthenticationMobileView({super.key});

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
