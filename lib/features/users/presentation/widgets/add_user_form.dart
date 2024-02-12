import 'package:app_template/utils/extensions/context_extensions.dart';
import 'package:app_template/utils/extensions/responsive_extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../utils/constant/constant.dart';
import '../../../../utils/navigation/app_navigations.dart';

class AddUserForm extends StatelessWidget {
  const AddUserForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      columnMainAxisAlignment: MainAxisAlignment.start,
      columnSpacing: 32,
      rowSpacing: 32,
      rowMainAxisAlignment: MainAxisAlignment.end,
      rowCrossAxisAlignment: CrossAxisAlignment.start,
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        context.isDisplayLargeThanTablet
            ? ResponsiveRowColumnItem(
                rowColumn: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Add User",
                      style: context.theme.textTheme.titleLarge?.copyWith(
                        fontWeight: AppFontWeight().boldFontWeight,
                      ),
                    ),
                    IconButton.filled(
                      onPressed: () {
                        AppNavigations().navigateBack(context: context);
                      },
                      icon: const Icon(
                        Icons.close_rounded,
                      ),
                    ),
                  ],
                ),
              )
            : const ResponsiveRowColumnItem(
                child: SizedBox.shrink(),
              ),
        ResponsiveRowColumnItem(
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: "UserName",
              hintText: "Please enter user name",
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Please enter user email",
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: "Phone number",
              hintText: "Please enter user phone number",
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: "Date of birth",
              hintText: "Please enter user date of birth",
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: DropdownButtonFormField(
              value: "Productions",
              items: const [
                DropdownMenuItem(
                  value: "Productions",
                  child: Text("Productions"),
                ),
                DropdownMenuItem(value: "Delivery", child: Text("Delivery")),
                DropdownMenuItem(value: "Sales", child: Text("Sales")),
                DropdownMenuItem(value: "Marketing", child: Text("Marketing")),
              ],
              onChanged: (val) {}),
        ),
        ResponsiveRowColumnItem(
          child: SizedBox(
            width: AppUtils.kAppButtonWidth(context),
            height: AppUtils.kAppButtonHeight(context),
            child: FilledButton(
              onPressed: () {},
              child: const Text("Submit"),
            ),
          ),
        ),
      ],
    );
  }
}
