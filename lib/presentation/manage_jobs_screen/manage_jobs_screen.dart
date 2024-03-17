import 'package:dineconnect/presentation/manage_jobs_screen/widgets/job_item_widget.dart';
import 'package:dineconnect/services/firebase_service.dart';
import 'package:dineconnect/services/job_posting.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:tuple/tuple.dart';

import '../../widgets/custom_elevated_button.dart';
import '../manage_jobs_screen/widgets/listchef_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/application_history_full_screen/application_history_full_Screen.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image.dart';
import 'package:dineconnect/widgets/app_bar/appbar_subtitle.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'edit_jobs_screen.dart';

DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();

class ManageJobsScreen extends StatefulWidget {
  @override
  _ManageJobsScreenState createState() => _ManageJobsScreenState();
}

class _ManageJobsScreenState extends State<ManageJobsScreen> {
  FirebaseService firebaseService = FirebaseService();


  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreen;
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
              Navigator.pop(context);
            },
          ),
          title: AppbarSubtitle(
            text: "Manage Jobs",
            margin: EdgeInsets.only(left: 11.h),
          ),
        ),
        //
        body: FutureBuilder<List<Tuple2<String, JobPosting>>>(
          future: firebaseService.fetchJobPostings(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error fetching job postings'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No jobs posted.'));
            } else {
              List<Tuple2<String, JobPosting>> tuples = snapshot.data!;

              return ListView.builder(
                itemCount: tuples.length,
                itemBuilder: (context, index) {
                  String jobId = tuples[index].item1;
                  JobPosting jobPosting = tuples[index].item2;

                  return JobItemWidget(
                    jobPosting: jobPosting,
                    onTapEdit: () {
                      // Handle edit button click
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditJobsScreen(jobId: jobId, jobPosting: jobPosting),
                        ),
                      );
                    },
                    jobRole: jobPosting.employeeRole,
                    salary: jobPosting.salary,
                    workHours: jobPosting.workingHours,
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