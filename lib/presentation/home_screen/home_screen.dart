import 'package:dineconnect/core/app_export.dart';

import 'package:flutter/material.dart';

import '../../widgets/custom_expanding_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _expandedDropdownIndex = -1;

  void toggleDropdown(int index) {
    setState(() {
      if (_expandedDropdownIndex == index) {
        _expandedDropdownIndex = -1;
      } else {
        _expandedDropdownIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 65.v),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 1.h),
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    decoration: AppDecoration.gradientIndigoToBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 9.h, top: 6.v, right: 16.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 1.v, bottom: 7.v),
                                child: Text(
                                  "Username ",
                                  style: theme
                                      .textTheme.headlineLarge,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgEmojimanoffice,
                                height: 41.v,
                                width: 47.h,
                                onTap: () {
                                  onTapImgEmojimanoffice(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 46.v),
                        Divider(),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v,),

                  CustomExpandingDropdown(
                    isExpanded: _expandedDropdownIndex == 0,
                    onTap: () {
                      toggleDropdown(0); // Expand or collapse this dropdown.
                    },
                    margin: EdgeInsets.all(10.0),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0),
                    leftIconData: Icons.person,
                    mainText: 'Employer',
                    dropdownItems: [
                      'Post a job',
                      'Manage jobs',
                      'Application'
                    ],
                    itemActions: [
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.androidLargeFiveScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.androidLargeTwentynineOneScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.androidLargeSixScreen);
                      },
                    ],
                  ),
                  SizedBox(height: 20.v,),

                  CustomExpandingDropdown(
                    isExpanded: _expandedDropdownIndex == 1,
                    onTap: () {
                      toggleDropdown(1);
                    },
                    margin: EdgeInsets.all(10.0),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0),
                    leftIconData: Icons.person_pin_circle_sharp,
                    mainText: 'Job Seeker',
                    dropdownItems: [
                      'Browse Job',
                      'Application History'
                    ],
                    itemActions: [
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.androidLargeFourScreen);
                      },
                          () {
                        Navigator.pushNamed(context,
                            AppRoutes.androidLargeTwentysixOneScreen);
                      },
                    ],
                  ),
                  SizedBox(height: 20.v,),
                  CustomExpandingDropdown(
                    isExpanded: _expandedDropdownIndex == 2,
                    onTap: () {
                      toggleDropdown(2);
                    },
                    margin: EdgeInsets.all(10.0),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0),
                    leftIconData: Icons.calculate_outlined,
                    mainText: 'Income Calculator',
                    dropdownItems: [
                      'Orders',
                      'Employees',
                      'Menu',
                      'Vendors'
                    ],
                    itemActions: [
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.androidLargeTwentysevenScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.androidLargeEighteenScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.androidLargeSixteenScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.androidLargeNineteenScreen);
                      },
                    ],
                  ),
                  SizedBox(height: 20.v,),
                ],
              ),
            ),
          ),
        );

  }

  /// Navigates to the androidLargeNineScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeNineScreen.
  onTapImgEmojimanoffice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeNineScreen);
  }
}
