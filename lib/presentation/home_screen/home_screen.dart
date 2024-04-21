
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/launcherScreen/launcher_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import 'package:dineconnect/services/firebase_service.dart';
import '../../widgets/custom_expanding_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _expandedDropdownIndex = -1;

  FirebaseService firebaseService = FirebaseService();

  String fullName = ""; // Updated variable name
  String phoneNumber = "";

  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? uid = "";

  @override
  void initState() {
    super.initState();
    // Initialize and listen to the user data stream here.
    final user = _auth.currentUser;
    final phoneNumber = user!.phoneNumber;
    firebaseService.fetchUserData(phoneNumber!).then((String? name) {
      if (name != null) {
        setState(() {
          fullName = name; // Update the fullName variable

        });
      } else {
        // Handle the case where user data is not found.
      }
    });
  }

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
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("D I N E C O N N E C T"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 1.h,top: 10),
                padding: EdgeInsets.symmetric(vertical: 10.v),
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 9.h, top: 6.v, right: 16.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10.v, bottom: 1.v),
                                child: Text(
                                  "Hi, "+fullName, // Display full name here
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
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red.shade900,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      _auth.signOut();
                                      LauncherScreen();
                                    },
                                    icon: Icon(
                                      Icons.logout,
                                      color: Colors.white,
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),

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
                            context, AppRoutes.postAJobScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.manageJobsScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.applicationScreen);
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
                            context, AppRoutes.browseJobScreen);
                      },
                          () {
                        Navigator.pushNamed(context,
                            AppRoutes.applicationHistoryScreen);
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
                            context, AppRoutes.ordersScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.employeesScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.menuScreen);
                      },
                          () {
                        Navigator.pushNamed(
                            context, AppRoutes.vendorsScreen);
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
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}
