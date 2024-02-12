import 'package:app_template/utils/extensions/context_extensions.dart';
import 'package:app_template/utils/extensions/responsive_extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../utils/constant/constant.dart';
import '../../../../widgets/responsive.dart';

class UserResponsiveGrid extends StatelessWidget {
  const UserResponsiveGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridView.builder(
      itemCount: 28,
      shrinkWrap: true,
      gridDelegate: ResponsiveGridDelegate(
        crossAxisSpacing: 25,
        mainAxisSpacing: 25,
        minCrossAxisExtent: getResponsiveValue(context, 250),
      ),
      itemBuilder: (BuildContext context, int index) => GridTile(
        footer: SizedBox(
          height: getResponsiveValue(context, 50),
          width: context.screenWidth,
          child: Card(
            color: context.theme.colorScheme.primary.withOpacity(0.4),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(getResponsiveValue(context, 10)),
                bottomRight: Radius.circular(getResponsiveValue(context, 10)),
              ),
            ),
            child: Center(
              child: Text(
                "John Smith",
                style: context.theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: AppFontWeight().boldFontWeight,
                    fontSize: getResponsiveValue(context, 14)),
              ),
            ),
          ),
        ),
        child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(
                AppUtils.paddingCard,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: getResponsiveValue(context, 40),
                    backgroundImage: const NetworkImage(
                      "https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=600",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: TextButton.icon(
                          icon: Icon(
                            Icons.edit,
                            size: getResponsiveValue(context, 14),
                          ),
                          onPressed: () {},
                          label: Text(
                            "Edit",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: FontWeight.w700,
                              color: context.theme.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: TextButton.icon(
                          icon: Icon(
                            Icons.delete,
                            size: getResponsiveValue(context, 14),
                            color: context.theme.colorScheme.error,
                          ),
                          onPressed: () {},
                          label: Text(
                            "Delete",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: FontWeight.w700,
                              color: context.theme.colorScheme.error,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
