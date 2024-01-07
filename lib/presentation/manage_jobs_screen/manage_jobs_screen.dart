import 'package:dineconnect/presentation/manage_jobs_screen/widgets/job_item_widget.dart';
import 'package:dineconnect/services/firebase_service.dart';
import 'package:dineconnect/services/job_posting.dart';

import '../../widgets/custom_elevated_button.dart';
import '../manage_jobs_screen/widgets/listchef_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/android_large_fifteen_page/android_large_fifteen_page.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_page/android_large_thirtyone_page.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image.dart';
import 'package:dineconnect/widgets/app_bar/appbar_subtitle.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
// class ManageJobsScreen extends StatelessWidget {
//   ManageJobsScreen({Key? key}) : super(key: key);
//
//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//     return SafeArea(
//         child: Scaffold(
//             appBar: CustomAppBar(
//                 height: 95.v,
//                 leadingWidth: 37.h,
//                 leading: AppbarImage(
//                     svgPath: ImageConstant.imgArrowleft,
//                     margin: EdgeInsets.only(left: 6.h, bottom: 8.v),
//                     onTap: () {
//                       onTapArrowleftone(context);
//                     }),
//                 title: AppbarSubtitle(
//                     text: "Manage Jobs", margin: EdgeInsets.only(left: 11.h))),
//             body: ListView.separated(
//                 physics: BouncingScrollPhysics(),
//                 shrinkWrap: true,
//                 separatorBuilder: (context, index) {
//                   return Padding(
//                       padding: EdgeInsets.symmetric(vertical: 5.0.v),
//                       child: SizedBox(
//                           width: double.maxFinite,
//                           child: Divider(
//                               height: 1.v,
//                               thickness: 1.v,
//                               color: theme.colorScheme.onError)));
//                 },
//                 itemCount: 2,
//                 itemBuilder: (context, index) {
//                   return ListchefItemWidget(onTapEdit: () {
//                     onTapEdit(context);
//                   });
//                 }),
//             bottomNavigationBar:
//                 CustomBottomBar(onChanged: (BottomBarEnum type) {
//               Navigator.pushNamed(
//                   navigatorKey.currentContext!, getCurrentRoute(type));
//             })));
//   }
//
//   ///Handling route based on bottom click actions
//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Home:
//         return AppRoutes.androidLargeThirtyonePage;
//       case BottomBarEnum.User:
//         return "/";
//       case BottomBarEnum.Map:
//         return "/";
//       case BottomBarEnum.Calculator:
//         return AppRoutes.androidLargeFifteenPage;
//       default:
//         return "/";
//     }
//   }
//
//   ///Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.androidLargeThirtyonePage:
//         return AndroidLargeThirtyonePage();
//       case AppRoutes.androidLargeFifteenPage:
//         return AndroidLargeFifteenPage();
//       default:
//         return DefaultWidget();
//     }
//   }
//
//   /// Navigates to the androidLargeThirtyScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the [Navigator] widget
//   /// to push the named route for the androidLargeThirtyScreen.
//   onTapEdit(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.androidLargeThirtyScreen);
//   }
//
//   /// Navigates back to the previous screen.
//   ///
//   /// This function takes a [BuildContext] object as a parameter, which is used
//   /// to navigate back to the previous screen.
//   onTapArrowleftone(BuildContext context) {
//     Navigator.pop(context);
//   }
// }

// class ManageJobsScreen extends StatelessWidget {
//   // ...
//   FirebaseService firebaseService = FirebaseService();
//   String phoneNumber = "";
//
//   ManageJobsScreen({Key? key}) : super(key: key) {
//     phoneNumber = firebaseService.getPhoneNumber()!;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // ...
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Manage Jobs',
//           style: TextStyle(
//             color: Colors.blueAccent[700],
//             fontWeight: FontWeight.bold,
//             fontSize: 24.0,
//           ),
//           textAlign: TextAlign.left,
//         ),
//       ),
//       body: FutureBuilder<List<JobPosting>>(
//         future: firebaseService.fetchJobPostings(phoneNumber),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//
//           if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           }
//
//           List<JobPosting> jobPostings = snapshot.data ?? [];
//
//           if (jobPostings.isEmpty) {
//             return Center(child: Text('No jobs posted.'));
//           }
//
//           return ListView.builder(
//             itemCount: jobPostings.length,
//             itemBuilder: (context, index) {
//               final job = jobPostings[index];
//               return JobItemWidget(
//                 jobRole: job.employeeRole,
//                 salary: job.salary,
//                 workHours: job.workingHours,
//                 onTapEdit: () {
//                   // Handle edit here
//                 },
//               );
//             },
//           );
//         },
//       ),
//
//       // ...
//     );
//   }
// }


class ManageJobsScreen extends StatefulWidget {
  @override
  _ManageJobsScreenState createState() => _ManageJobsScreenState();
}

class _ManageJobsScreenState extends State<ManageJobsScreen> {
  FirebaseService firebaseService = FirebaseService();

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.androidLargeThirtyonePage;
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Map:
        return "/";
      case BottomBarEnum.Calculator:
        return AppRoutes.androidLargeFifteenPage;
      default:
        return "/";
    }
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 95.v,
          leadingWidth: 37.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgArrowleft,
            margin: EdgeInsets.only(left: 6.h, bottom: 8.v),
            onTap: () {
              // onTapArrowleftone(context);
            },
          ),
          title: AppbarSubtitle(
            text: "Manage Jobs",
            margin: EdgeInsets.only(left: 11.h),
          ),
        ),
        body: FutureBuilder(
          future: firebaseService.fetchJobPostings(firebaseService.getPhoneNumber()!),
          builder: (context, AsyncSnapshot<List<JobPosting>> snapshot) {
            print(snapshot.hasData);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error fetching job postings'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No jobs posted.'));
            } else {
              List<JobPosting> jobPostings = snapshot.data!;

              return ListView.builder(
                itemCount: jobPostings.length,
                itemBuilder: (context, index) {
                  return JobPostingWidget(
                    jobPosting: jobPostings[index],
                    onTapEdit: () {
                      // Handle edit button click
                    },
                  );
                },
              );
            }
          },
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(context, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  Widget JobPostingWidget({required JobPosting jobPosting, required VoidCallback onTapEdit}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jobPosting.employeeRole,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 3.v),
          Text(
            jobPosting.hotelName,
            style: CustomTextStyles.bodySmallGray600,
          ),
          // ... other job information ...

          CustomElevatedButton(
            height: 17.v,
            width: 69.h,
            text: "Edit",
            margin: EdgeInsets.only(
              left: 3.h,
              top: 8.v,
            ),
            buttonStyle: CustomButtonStyles.fillOrangeATL8,
            buttonTextStyle: CustomTextStyles.bodySmallOnPrimaryContainer,
            onTap: onTapEdit,
          ),
        ],
      ),
    );
  }
}