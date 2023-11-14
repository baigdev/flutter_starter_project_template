import 'package:app_template/features/authentication/presentation/pages/mobile/auth_mobile_view.dart';
import 'package:app_template/features/authentication/presentation/pages/tablet/auth_tablet_view.dart';
import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobile: AuthenticationMobileView(),
      tablet: AuthenticationTabletView(),
    );
  }
}
