import 'package:dineconnect/core/app_export.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentysixScreen extends StatelessWidget {
  const AndroidLargeTwentysixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 48.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 765.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 1.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24.h,
                                                vertical: 32.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          left: 11.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 28.v),
                                                      decoration: AppDecoration
                                                          .gradientIndigoToIndigo40093
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder35),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 33
                                                                            .h,
                                                                        top:
                                                                            6.v,
                                                                        right: 22
                                                                            .h),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgUser,
                                                                              height: 42.adaptSize,
                                                                              width: 42.adaptSize,
                                                                              margin: EdgeInsets.only(bottom: 7.v)),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 36.h, top: 18.v),
                                                                              child: Text("Employer", style: theme.textTheme.headlineLarge)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgArrowdown,
                                                                              height: 8.v,
                                                                              width: 16.h,
                                                                              radius: BorderRadius.circular(4.h),
                                                                              margin: EdgeInsets.only(left: 18.h, top: 31.v, bottom: 10.v))
                                                                        ]))),
                                                            SizedBox(
                                                                height: 17.v),
                                                            Divider(),
                                                            Container(
                                                                height: 16.v,
                                                                width: 66.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 34
                                                                            .h,
                                                                        top: 24
                                                                            .v),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: GestureDetector(
                                                                              onTap: () {
                                                                                onTapTxtPostajob(context);
                                                                              },
                                                                              child: Text("Post a job", style: CustomTextStyles.bodyLargeNewsreader))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: SizedBox(
                                                                              width: 65.h,
                                                                              child: Divider()))
                                                                    ])),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapTxtManagejob(
                                                                      context);
                                                                },
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 35
                                                                            .h,
                                                                        top: 14
                                                                            .v),
                                                                    child: Text(
                                                                        "Manage  job",
                                                                        style: CustomTextStyles
                                                                            .bodyLargeNewsreader))),
                                                            SizedBox(
                                                                width: 134.h,
                                                                child: Divider(
                                                                    indent:
                                                                        35.h)),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapTxtApplications(
                                                                      context);
                                                                },
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 34
                                                                            .h,
                                                                        top: 12
                                                                            .v),
                                                                    child: Text(
                                                                        "Applications",
                                                                        style: CustomTextStyles
                                                                            .bodyLargeNewsreader))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 3
                                                                            .v),
                                                                child: SizedBox(
                                                                    width:
                                                                        122.h,
                                                                    child: Divider(
                                                                        indent:
                                                                            35.h)))
                                                          ])),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapIconExamM(context);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 8.h,
                                                                  top: 46.v,
                                                                  right: 3.h),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical:
                                                                      30.v),
                                                          decoration: AppDecoration
                                                              .gradientIndigoToIndigo40093
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder30),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgUserOnerror,
                                                                    height:
                                                                        40.v,
                                                                    width: 50.h,
                                                                    margin: EdgeInsets.only(
                                                                        bottom:
                                                                            6.v)),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top:
                                                                            3.v,
                                                                        bottom: 14
                                                                            .v),
                                                                    child: Text(
                                                                        "Job seekers",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowdown,
                                                                    height: 8.v,
                                                                    width: 16.h,
                                                                    margin: EdgeInsets.only(
                                                                        top: 18
                                                                            .v,
                                                                        bottom:
                                                                            19.v))
                                                              ]))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapIconExamM1(
                                                            context);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 11.h,
                                                                  top: 22.v,
                                                                  bottom: 77.v),
                                                          padding:
                                                              EdgeInsets.symmetric(
                                                                  horizontal:
                                                                      12.h,
                                                                  vertical:
                                                                      16.v),
                                                          decoration: AppDecoration
                                                              .gradientIndigoToIndigo40093
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder30),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCalculator,
                                                                    height: 48
                                                                        .adaptSize,
                                                                    width: 48
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.only(
                                                                        left: 15
                                                                            .h,
                                                                        top: 14
                                                                            .v,
                                                                        bottom:
                                                                            9.v)),
                                                                Container(
                                                                    width:
                                                                        139.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 36
                                                                            .h,
                                                                        bottom: 5
                                                                            .v),
                                                                    child: Text(
                                                                        "Income Calculator\n ",
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineLarge)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowdown,
                                                                    height: 8.v,
                                                                    width: 16.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 20
                                                                            .h,
                                                                        top: 34
                                                                            .v,
                                                                        bottom:
                                                                            29.v))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 13.v),
                                            decoration: AppDecoration
                                                .gradientOnErrorContainerToOnErrorContainer,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10.h,
                                                          top: 15.v,
                                                          right: 20.h),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 17
                                                                            .v),
                                                                child: Text(
                                                                    "Username ",
                                                                    style: theme
                                                                        .textTheme
                                                                        .headlineLarge)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgUserOnprimarycontainer,
                                                                height: 43.v,
                                                                width: 48.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 5
                                                                            .v))
                                                          ])),
                                                  SizedBox(height: 30.v),
                                                  Divider()
                                                ])))
                                  ]))))
                ]))));
  }

  /// Navigates to the androidLargeFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeFiveScreen.
  onTapTxtPostajob(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.postAJobScreen);
  }

  /// Navigates to the androidLargeTwentynineOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentynineOneScreen.
  onTapTxtManagejob(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manageJobsScreen);
  }

  /// Navigates to the androidLargeSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeSixScreen.
  onTapTxtApplications(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.applicationScreen);
  }

  /// Navigates to the androidLargeTwentysevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentysevenScreen.
  onTapIconExamM(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ordersScreen);
  }

  /// Navigates to the androidLargeTwentysixOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentysixOneScreen.
  onTapIconExamM1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.applicationHistoryScreen);
  }
}
