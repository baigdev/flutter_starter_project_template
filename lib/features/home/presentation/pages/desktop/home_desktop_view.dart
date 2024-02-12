import 'package:app_template/utils/constant/constant.dart';
import 'package:app_template/utils/extensions/context_extensions.dart';
import 'package:app_template/utils/extensions/string_extensions.dart';
import 'package:app_template/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_header.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(
          AppUtils.paddingAllSides,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              width: getResponsiveValue(context, context.screenWidth / 2),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Search by name, project #, activity, date."),
              ),
            ),
            AppUtils.sizedBoxHeight(context, defaultValue: 50),
            Row(
              children: [
                Expanded(
                    child: DataTable(
                  border: TableBorder.symmetric(
                      outside: const BorderSide(color: Colors.grey),
                      inside: const BorderSide(color: Colors.grey)),
                  columns: [
                    DataColumn(
                      label: Text(
                        "Name",
                        style: TextStyle(
                          fontSize: getResponsiveValue(context, 16),
                          fontWeight: AppFontWeight().lightFontWeight,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Status",
                        style: TextStyle(
                          fontSize: getResponsiveValue(context, 16),
                          fontWeight: AppFontWeight().lightFontWeight,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Progress",
                        style: TextStyle(
                          fontSize: getResponsiveValue(context, 16),
                          fontWeight: AppFontWeight().lightFontWeight,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Department",
                        style: TextStyle(
                          fontSize: getResponsiveValue(context, 16),
                          fontWeight: AppFontWeight().lightFontWeight,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Date",
                        style: TextStyle(
                          fontSize: getResponsiveValue(context, 16),
                          fontWeight: AppFontWeight().lightFontWeight,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            "Mashood",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Transform(
                            transform:  Matrix4.identity()..scale(0.9),
                            child:  ActionChip(
                              label:   Text(
                                "In Progress",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: getResponsiveValue(context, 14),
                                  fontWeight: AppFontWeight().semiBoldFontWeight,
                                ),
                              ),
                              backgroundColor: Colors.lime.shade100,
                            ),
                          ),
                        ),
                        DataCell(
                          Slider(
                            value: 50,
                            min: 0,
                            max: 100,
                            secondaryTrackValue: 50,
                            label: "50 %",
                            onChanged: (val) {},
                          ),
                        ),
                        DataCell(
                          Text(
                            "Production",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            DateTime.now().toIso8601String().formattedDateAndTime(context),
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            "Test1",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Transform(
                            transform:  Matrix4.identity()..scale(0.9),
                            child:  ActionChip(
                              label:   Text(
                                "Pending",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: getResponsiveValue(context, 14),
                                  fontWeight: AppFontWeight().semiBoldFontWeight,
                                ),
                              ),
                              backgroundColor: Colors.lime.shade100,
                            ),
                          ),
                        ),
                        DataCell(
                          Slider(
                            value: 25,
                            min: 0,
                            max: 100,
                            secondaryTrackValue: 25,
                            label: "25 %",
                            onChanged: (val) {},
                          ),
                        ),
                        DataCell(
                          Text(
                            "Designer",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            DateTime.now().subtract(const Duration(days: 2)).toIso8601String().formattedDateAndTime(context),
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                      ],
                    ),

                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            "Test 2",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Transform(
                            transform:  Matrix4.identity()..scale(0.9),
                            child:  ActionChip(
                              label:   Text(
                                "In Progress",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: getResponsiveValue(context, 14),
                                  fontWeight: AppFontWeight().semiBoldFontWeight,
                                ),
                              ),
                              backgroundColor: Colors.lime.shade100,
                            ),
                          ),
                        ),
                        DataCell(
                          Slider(
                            value: 50,
                            min: 0,
                            max: 100,
                            secondaryTrackValue: 50,
                            label: "50 %",
                            onChanged: (val) {},
                          ),
                        ),
                        DataCell(
                          Text(
                            "Production",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            DateTime.now().toIso8601String().formattedDateAndTime(context),
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                      ],
                    ),

                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            "Test 3",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Transform(
                            transform:  Matrix4.identity()..scale(0.9),
                            child:  ActionChip(
                              label:   Text(
                                "In Progress",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: getResponsiveValue(context, 14),
                                  fontWeight: AppFontWeight().semiBoldFontWeight,
                                ),
                              ),
                              backgroundColor: Colors.lime.shade100,
                            ),
                          ),
                        ),
                        DataCell(
                          Slider(
                            value: 50,
                            min: 0,
                            max: 100,
                            secondaryTrackValue: 50,
                            label: "50 %",
                            onChanged: (val) {},
                          ),
                        ),
                        DataCell(
                          Text(
                            "Production",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            DateTime.now().toIso8601String().formattedDateAndTime(context),
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                      ],
                    ),

                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            "Test 4",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Transform(
                            transform:  Matrix4.identity()..scale(0.9),
                            child:  ActionChip(
                              label:   Text(
                                "In Progress",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: getResponsiveValue(context, 14),
                                  fontWeight: AppFontWeight().semiBoldFontWeight,
                                ),
                              ),
                              backgroundColor: Colors.lime.shade100,
                            ),
                          ),
                        ),
                        DataCell(
                          Slider(
                            value: 50,
                            min: 0,
                            max: 100,
                            secondaryTrackValue: 50,
                            label: "50 %",
                            onChanged: (val) {},
                          ),
                        ),
                        DataCell(
                          Text(
                            "Production",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            DateTime.now().toIso8601String().formattedDateAndTime(context),
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            "Test 5",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Transform(
                            transform:  Matrix4.identity()..scale(0.9),
                            child:  ActionChip(
                              label:   Text(
                                "In Progress",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: getResponsiveValue(context, 14),
                                  fontWeight: AppFontWeight().semiBoldFontWeight,
                                ),
                              ),
                              backgroundColor: Colors.lime.shade100,
                            ),
                          ),
                        ),
                        DataCell(
                          Slider(
                            value: 50,
                            min: 0,
                            max: 100,
                            secondaryTrackValue: 50,
                            label: "50 %",
                            onChanged: (val) {},
                          ),
                        ),
                        DataCell(
                          Text(
                            "Production",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            DateTime.now().toIso8601String().formattedDateAndTime(context),
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            "Test 6",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Transform(
                            transform:  Matrix4.identity()..scale(0.9),
                            child:  ActionChip(
                              label:   Text(
                                "In Progress",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: getResponsiveValue(context, 14),
                                  fontWeight: AppFontWeight().semiBoldFontWeight,
                                ),
                              ),
                              backgroundColor: Colors.lime.shade100,
                            ),
                          ),
                        ),
                        DataCell(
                          Slider(
                            value: 50,
                            min: 0,
                            max: 100,
                            secondaryTrackValue: 50,
                            label: "50 %",
                            onChanged: (val) {},
                          ),
                        ),
                        DataCell(
                          Text(
                            "Production",
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            DateTime.now().toIso8601String().formattedDateAndTime(context),
                            style: TextStyle(
                              fontSize: getResponsiveValue(context, 14),
                              fontWeight: AppFontWeight().semiBoldFontWeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
              ],
            )
          ],
        ),
      )),
    );
  }
}
