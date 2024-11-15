import 'package:app_template/utils/constant/constant.dart';
import 'package:app_template/utils/extensions/context_extensions.dart';
import 'package:app_template/utils/navigation/app_navigations.dart';
import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthenticationTabletView extends StatelessWidget {
  const AuthenticationTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.network(
            "https://images.pexels.com/photos/19295636/pexels-photo-19295636/free-photo-of-aerial-view-of-a-man-fishing-in-the-sea-at-sunset.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
            fit: BoxFit.cover,
            height: context.screenHeight,
            width: context.screenWidth,
          ),
        ),
        Expanded(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(AppUtils.appTextFieldPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/app_icon.svg",
                      semanticsLabel: 'App Logo',
                    ),
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
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    AppUtils.sizedBoxHeight(
                      context,
                    ),
                    // Text(
                    //   "User Name",
                    //   style: TextStyle(
                    //     fontSize: getResponsiveValue(context, 14),
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                    // AppUtils.sizedBoxHeight(context, defaultValue: 8),
                    // const TextField(
                    //   decoration:
                    //       InputDecoration(hintText: "Enter your username"),
                    // ),
                    // AppUtils.sizedBoxHeight(context),
                    // Text(
                    //   "Password",
                    //   style: TextStyle(
                    //     fontSize: getResponsiveValue(context, 14),
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                    // AppUtils.sizedBoxHeight(context, defaultValue: 8),
                    // const TextField(
                    //   decoration:
                    //       InputDecoration(hintText: "Enter your password"),
                    // ),
                    // AppUtils.sizedBoxHeight(context),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Expanded(
                    //
                    //       child: CheckboxListTile.adaptive(
                    //         value: false,
                    //         onChanged: (val) {},
                    //         dense: true,
                    //         controlAffinity: ListTileControlAffinity.leading,
                    //         title: Text(
                    //           "Remember Me",
                    //           style: TextStyle(
                    //             fontSize: getResponsiveValue(context, 14),
                    //             fontWeight: FontWeight.w900,
                    //             color: Colors.grey.shade500,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     TextButton(
                    //       onPressed: () {},
                    //       child: Text(
                    //         "Forgot Password?",
                    //         textAlign: TextAlign.end,
                    //         style: TextStyle(
                    //           fontSize: getResponsiveValue(context, 14),
                    //           fontWeight: FontWeight.w700,
                    //           color: context.theme.primaryColor,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // AppUtils.sizedBoxHeight(context),
                    SizedBox(
                      width: AppUtils.kAppButtonWidth(context),
                      height: AppUtils.kAppButtonHeight(context),
                      child: TextButton.icon(
                        icon: SvgPicture.asset(
                          AppImages.googleIcon,
                        ),
                        style: context.theme.textButtonTheme.style?.copyWith(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: AppUtils.kBorderRadiusCircular,
                                  side: BorderSide(
                                      color: context.theme.primaryColor))),
                        ),
                        onPressed: () {
                          AppNavigations()
                              .navigateFromAuthToDashboard(context: context);
                        },
                        label: Text(
                          "Continue with Google",
                          style: TextStyle(
                            fontSize: getResponsiveValue(context, 16),
                            fontWeight: AppFontWeight().semiBoldFontWeight,
                          ),
                        ),
                      ),
                    ),
                    // AppUtils.sizedBoxHeight(context),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       "Don't have an account?",
                    //       style: TextStyle(
                    //         fontSize: getResponsiveValue(context, 14),
                    //         fontWeight: FontWeight.w700,
                    //         color: Colors.grey.shade500,
                    //       ),
                    //     ),
                    //     Flexible(
                    //       child: TextButton(
                    //         onPressed: () {},
                    //         child: Text(
                    //           "Signup",
                    //           style: TextStyle(
                    //               fontSize: getResponsiveValue(context, 14),
                    //               fontWeight: FontWeight.w700,
                    //               color: context.theme.primaryColor,
                    //               decoration: TextDecoration.underline),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
