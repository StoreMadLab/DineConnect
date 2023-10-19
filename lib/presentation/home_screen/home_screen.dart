
import 'package:dineconnect/core/app_export.dart';
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

  // Future<String?> fetchUserDataFromFirebase(String phoneNumber) async {
  //   final databaseReference = FirebaseDatabase.instance.ref();
  //   final userRef = databaseReference.child('users/$phoneNumber/fullName');
  //
  //   try {
  //     DatabaseEvent databaseEvent = await userRef.once();
  //     if (databaseEvent.snapshot.value != null) {
  //       return databaseEvent.snapshot.value.toString();
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     print('Error fetching user data: $e');
  //     return null;
  //   }
  // }

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
                              fullName, // Display full name here
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
