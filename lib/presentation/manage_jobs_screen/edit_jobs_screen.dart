import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/android_large_fifteen_page/android_large_fifteen_page.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_page/android_large_thirtyone_page.dart';
import 'package:dineconnect/services/firebase_service.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../../services/job_posting.dart';

// // ignore_for_file: must_be_immutable
// class EditJobsScreen extends StatelessWidget {
//   EditJobsScreen({
//     Key? key,
//     required this.jobPosting,
//   }) : super(key: key);
//

//
//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();
//
//   TextEditingController hotelnameController = TextEditingController();
//
//   TextEditingController roletextController = TextEditingController();
//
//   TextEditingController descriptionController = TextEditingController();
//
//   TextEditingController salaryController = TextEditingController();
//
//   TextEditingController workingtimeController = TextEditingController();
//
//   TextEditingController locationController = TextEditingController();
//
//   TextEditingController statusController = TextEditingController();
//
//   String phoneNumber = "";
//   String hotelName = "";
//   String employeeRole = "";
//   String jobDescription = "";
//   String salary = "";
//   String workinghours = "";
//   String location = "";
//   String status = "";
//
//
//   FirebaseService firebaseService = FirebaseService();
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//     hotelnameController.text = jobPosting.hotelName ?? "";
//     roletextController.text = jobPosting.employeeRole ?? "";
//     descriptionController.text = jobPosting.jobDescription ?? "";
//     salaryController.text = jobPosting.salary ?? "";
//     workingtimeController.text = jobPosting.workingHours ?? "";
//     locationController.text = jobPosting.location ?? "";
//     statusController.text = "true";
//
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Text(
//           'Post a Job',
//           style: TextStyle(
//             color: Colors.blueAccent[700],
//             fontWeight: FontWeight.bold,
//             fontSize: 24.0,
//           ),
//           textAlign: TextAlign.left,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(left: 40.h, top: 10.v),
//               child: Text("Hotel Name", style: CustomTextStyles.titleLargeBlue800),
//             ),
//             CustomTextFormField(
//               controller: hotelnameController,
//               textStyle: TextStyle(color: Colors.black),
//               margin: EdgeInsets.only(left: 36.h, top: 10.v, right: 19.h, bottom: 10.v),
//               alignment: Alignment.centerRight,
//             ),
//             Padding(
//                 padding: EdgeInsets.only(left: 40.h, top: 10.v),
//                 child: Text("Role",
//                     style: CustomTextStyles.titleLargeBlue800)),
//             CustomTextFormField(
//                 controller: roletextController,
//                 textStyle: TextStyle(color: Colors.black),
//                 margin: EdgeInsets.only(
//                     left: 36.h, top: 10.v, right: 19.h),
//                 alignment: Alignment.centerRight),
//             Padding(
//                 padding: EdgeInsets.only(left: 40.h, top: 10.v),
//                 child: Text("Description",
//                     style: CustomTextStyles.titleLargeBlue800)),
//             CustomTextFormField(
//                 maxLines: 2,
//                 controller: descriptionController,
//                 textStyle: TextStyle(color: Colors.black),
//                 fieldHeight: 40,
//                 margin: EdgeInsets.only(
//                     left: 36.h, top: 10.v, right: 19.h),
//                 alignment: Alignment.center,
//                 borderDecoration:
//                 TextFormFieldStyleHelper.fillPrimary2,
//                 fillColor:
//                 theme.colorScheme.primary.withOpacity(0.67)),
//             Padding(
//                 padding: EdgeInsets.only(left: 40.h, top: 10.v),
//                 child: Text("Salary",
//                     style: CustomTextStyles.titleLargeBlue800)),
//             CustomTextFormField(
//                 controller: salaryController,
//                 textStyle: TextStyle(color: Colors.black),
//                 margin: EdgeInsets.only(
//                     left: 36.h, top: 10.v, right: 19.h),
//                 alignment: Alignment.center),
//             Padding(
//                 padding: EdgeInsets.only(left: 40.h, top: 10.v),
//                 child: Text("Working Hours",
//                     style: CustomTextStyles.titleLargeBlue800)),
//             CustomTextFormField(
//                 controller: workingtimeController,
//                 textStyle: TextStyle(color: Colors.black),
//                 margin: EdgeInsets.only(
//                     left: 36.h, top: 10.v, right: 19.h),
//                 alignment: Alignment.center),
//             Padding(
//                 padding: EdgeInsets.only(left: 40.h, top: 10.v),
//                 child: Text("Location",
//                     style: CustomTextStyles.titleLargeBlue800)),
//             CustomTextFormField(
//                 controller: locationController,
//                 textStyle: TextStyle(color: Colors.black),
//                 margin: EdgeInsets.only(
//                     left: 36.h, top: 10.v, right: 19.h),
//                 textInputAction: TextInputAction.done,
//                 alignment: Alignment.center),
//             SizedBox(height: 15.v),
//           ],
//         ),
//       ),
//       bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
//         Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
//       }),
//       persistentFooterButtons: [
//         CustomElevatedButton(
//           height: 40.v,
//           width: 135.h,
//           text: "EDIT",
//           alignment: Alignment.center,
//           buttonTextStyle: CustomTextStyles.titleMediumNewsreader,
//           onTap: () {
//             onTapEdit(context);
//           },
//         ),
//       ],
//     );
//   }
//
//
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
//   /// Navigates back to the previous screen.
//   ///
//   /// This function takes a [BuildContext] object as a parameter, which is used
//   /// to navigate back to the previous screen.
//   onTapArrowleftone(BuildContext context) {
//     Navigator.pop(context);
//   }
//
//   onTapEdit(BuildContext context) async {
//
//     hotelName = hotelnameController.text;
//     employeeRole = roletextController.text;
//     jobDescription = descriptionController.text;
//     salary = salaryController.text;
//     workinghours = workingtimeController.text;
//     location = locationController.text;
//     status = "true";
//
//     DatabaseReference usersRef = FirebaseDatabase.instance.ref().child("jobs_post");
//
//     phoneNumber = firebaseService.getPhoneNumber()!;
//
//     await usersRef.child(phoneNumber).set({
//       "hotelName": hotelName,
//       "employeeRole": employeeRole,
//       "jobDescription": jobDescription,
//       "salary": salary,
//       "workinghours": workinghours,
//       "location": location,
//       "status": status,
//     });
//
//     Navigator.pushNamed(context, AppRoutes.manageJobsScreen);
//   }
// }

class EditJobsScreen extends StatefulWidget {
  final JobPosting jobPosting;

  const EditJobsScreen({
    Key? key,
    required this.jobPosting,
  }) : super(key: key);

  @override
  _EditJobsScreenState createState() => _EditJobsScreenState();
}

class _EditJobsScreenState extends State<EditJobsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController hotelnameController = TextEditingController();
  TextEditingController roletextController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController workingtimeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController statusController = TextEditingController();

  String phoneNumber = "";
  String hotelName = "";
  String employeeRole = "";
  String jobDescription = "";
  String salary = "";
  String workinghours = "";
  String location = "";
  String status = "";

  FirebaseService firebaseService = FirebaseService();

  @override
  void initState() {
    super.initState();

    // Initialize controllers with values from jobPosting
    hotelnameController.text = widget.jobPosting.hotelName ?? "";
    roletextController.text = widget.jobPosting.employeeRole ?? "";
    descriptionController.text = widget.jobPosting.jobDescription ?? "";
    salaryController.text = widget.jobPosting.salary ?? "";
    workingtimeController.text = widget.jobPosting.workingHours ?? "";
    locationController.text = widget.jobPosting.location ?? "";
    statusController.text = "true";
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Edit the Job',
          style: TextStyle(
            color: Colors.blueAccent[700],
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40.h, top: 10.v),
              child: Text("Hotel Name", style: CustomTextStyles.titleLargeBlue800),
            ),
            CustomTextFormField(
              controller: hotelnameController,
              textStyle: TextStyle(color: Colors.black),
              margin: EdgeInsets.only(left: 36.h, top: 10.v, right: 19.h, bottom: 10.v),
              alignment: Alignment.centerRight,
            ),
            Padding(
                padding: EdgeInsets.only(left: 40.h, top: 10.v),
                child: Text("Role",
                    style: CustomTextStyles.titleLargeBlue800)),
            CustomTextFormField(
                controller: roletextController,
                textStyle: TextStyle(color: Colors.black),
                margin: EdgeInsets.only(
                    left: 36.h, top: 10.v, right: 19.h),
                alignment: Alignment.centerRight),
            Padding(
                padding: EdgeInsets.only(left: 40.h, top: 10.v),
                child: Text("Description",
                    style: CustomTextStyles.titleLargeBlue800)),
            CustomTextFormField(
                maxLines: 2,
                controller: descriptionController,
                textStyle: TextStyle(color: Colors.black),
                fieldHeight: 40,
                margin: EdgeInsets.only(
                    left: 36.h, top: 10.v, right: 19.h),
                alignment: Alignment.center,
                borderDecoration:
                TextFormFieldStyleHelper.fillPrimary2,
                fillColor:
                theme.colorScheme.primary.withOpacity(0.67)),
            Padding(
                padding: EdgeInsets.only(left: 40.h, top: 10.v),
                child: Text("Salary",
                    style: CustomTextStyles.titleLargeBlue800)),
            CustomTextFormField(
                controller: salaryController,
                textStyle: TextStyle(color: Colors.black),
                margin: EdgeInsets.only(
                    left: 36.h, top: 10.v, right: 19.h),
                alignment: Alignment.center),
            Padding(
                padding: EdgeInsets.only(left: 40.h, top: 10.v),
                child: Text("Working Hours",
                    style: CustomTextStyles.titleLargeBlue800)),
            CustomTextFormField(
                controller: workingtimeController,
                textStyle: TextStyle(color: Colors.black),
                margin: EdgeInsets.only(
                    left: 36.h, top: 10.v, right: 19.h),
                alignment: Alignment.center),
            Padding(
                padding: EdgeInsets.only(left: 40.h, top: 10.v),
                child: Text("Location",
                    style: CustomTextStyles.titleLargeBlue800)),
            CustomTextFormField(
                controller: locationController,
                textStyle: TextStyle(color: Colors.black),
                margin: EdgeInsets.only(
                    left: 36.h, top: 10.v, right: 19.h),
                textInputAction: TextInputAction.done,
                alignment: Alignment.center),
            SizedBox(height: 15.v),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
      }),
      persistentFooterButtons: [
        CustomElevatedButton(
          height: 40.v,
          width: 135.h,
          text: "EDIT",
          alignment: Alignment.center,
          buttonTextStyle: CustomTextStyles.titleMediumNewsreader,
          onTap: () {
            onTapEdit(context);
          },
        ),
      ],
    );

  }

// Rest of the class remains the same
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

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.androidLargeThirtyonePage:
        return AndroidLargeThirtyonePage();
      case AppRoutes.androidLargeFifteenPage:
        return AndroidLargeFifteenPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapEdit(BuildContext context) async {

    hotelName = hotelnameController.text;
    employeeRole = roletextController.text;
    jobDescription = descriptionController.text;
    salary = salaryController.text;
    workinghours = workingtimeController.text;
    location = locationController.text;
    status = "true";

    DatabaseReference usersRef = FirebaseDatabase.instance.ref().child("jobs_post");

    phoneNumber = firebaseService.getPhoneNumber()!;

    await usersRef.child(phoneNumber).set({
      "hotelName": hotelName,
      "employeeRole": employeeRole,
      "jobDescription": jobDescription,
      "salary": salary,
      "workinghours": workinghours,
      "location": location,
      "status": status,
    });

    Navigator.pushNamed(context, AppRoutes.manageJobsScreen);
  }
}
