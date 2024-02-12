import 'package:app_template/utils/constant/constant.dart';
import 'package:app_template/utils/extensions/context_extensions.dart';
import 'package:app_template/utils/navigation/app_navigations.dart';
import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthenticationMobileView extends StatelessWidget {
  const AuthenticationMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppUtils.appTextFieldPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/icons/app_icon.svg",
                    semanticsLabel: 'App Logo'),
                AppUtils.sizedBoxHeight(context),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: getResponsiveValue(context, 24),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                AppUtils.sizedBoxHeight(context, defaultValue: 8),
                Text(
                  "Welcome back! Please login to your account.",
                  style: TextStyle(
                    fontSize: getResponsiveValue(context, 14),
                    fontWeight: FontWeight.w900,
                    color: Colors.grey.shade500,

                  ),
                ),
                AppUtils.sizedBoxHeight(
                  context,
                ),
                Text(
                  "User Name",
                  style: TextStyle(
                    fontSize: getResponsiveValue(context, 14),
                    fontWeight: FontWeight.w600,

                  ),
                ),
                AppUtils.sizedBoxHeight(context, defaultValue: 8),
                const TextField(
                  decoration: InputDecoration(hintText: "Enter your username"),
                ),
                AppUtils.sizedBoxHeight(context),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: getResponsiveValue(context, 14),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                AppUtils.sizedBoxHeight(context, defaultValue: 8),
                const TextField(
                  decoration: InputDecoration(hintText: "Enter your password"),
                ),
                AppUtils.sizedBoxHeight(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: CheckboxListTile.adaptive(
                        value: false,
                        onChanged: (val) {},
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "Remember Me",
                          style: TextStyle(
                            fontSize: getResponsiveValue(context, 14),
                            fontWeight: FontWeight.w900,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: getResponsiveValue(context, 14),
                            fontWeight: FontWeight.w700,
                            color: context.theme.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AppUtils.sizedBoxHeight(context),
                Center(
                  child: SizedBox(
                    width: AppUtils.kAppButtonWidth(context),
                    height: AppUtils.kAppButtonHeight(context),
                    child: FilledButton(
                      onPressed: () {
                        AppNavigations().navigateFromAuthToDashboard(context: context);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: getResponsiveValue(context, 16),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                AppUtils.sizedBoxHeight(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: getResponsiveValue(context, 14),
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Flexible(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Signup",
                          style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: FontWeight.w700,
                              color: context.theme.primaryColor,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
