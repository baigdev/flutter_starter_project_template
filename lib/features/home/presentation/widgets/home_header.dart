import 'package:app_template/utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constant/constant.dart';
import '../../../../widgets/responsive.dart';

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Time Tracking",
          style: TextStyle(
            fontSize: getResponsiveValue(
              context,
              20,
            ),
            fontWeight: AppFontWeight().boldFontWeight,
          ),
        ),
        InkWell(
          onTap: () {},
          borderRadius: AppUtils.kBorderRadiusCircular,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: context.theme.secondaryHeaderColor,
              ),
              borderRadius: AppUtils.kBorderRadiusCircular,
            ),
            padding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: getResponsiveValue(context, 18),
                  backgroundImage: const NetworkImage(
                    "https://images.pexels.com/photos/19415783/pexels-photo-19415783/free-photo-of-elegant-man-in-suit-reading-newspaper.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                ),
                AppUtils.sizedBoxWidth(
                  context,
                  defaultValue: 5,
                ),
                Text(
                  "Mashood S.",
                  style: TextStyle(
                    fontSize: getResponsiveValue(
                      context,
                      16,
                    ),
                    fontWeight: AppFontWeight().lightFontWeight,
                  ),
                ),
                AppUtils.sizedBoxWidth(
                  context,
                  defaultValue: 5,
                ),
                const Icon(
                  Icons.arrow_drop_down,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
