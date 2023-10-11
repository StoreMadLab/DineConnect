import 'package:dineconnect/core/app_export.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentysevenScreen extends StatelessWidget {
  const AndroidLargeTwentysevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 35.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 765.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 131.v,
                                            width: 359.h,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: Alignment(0.5, 0),
                                                    end: Alignment(0.5, 1),
                                                    colors: [
                                                  appTheme.indigo90087,
                                                  appTheme.blue90087
                                                ])))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 1.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24.h,
                                                vertical: 56.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapIconExamM(context);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 11.h),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      22.h,
                                                                  vertical:
                                                                      36.v),
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
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 89
                                                                            .h),
                                                                    child: Text(
                                                                        "Employer",
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
                                                                        left: 18
                                                                            .h,
                                                                        top: 14
                                                                            .v,
                                                                        bottom:
                                                                            9.v))
                                                              ]))),
                                                  SizedBox(height: 28.v),
                                                  SizedBox(
                                                      height: 181.v,
                                                      width: 299.h,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left: 1
                                                                                .h),
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 12
                                                                                .h,
                                                                            vertical: 23
                                                                                .v),
                                                                        decoration: AppDecoration.gradientIndigoToIndigo40093.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder30),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                            children: [
                                                                              SizedBox(height: 9.v),
                                                                              Align(
                                                                                  alignment: Alignment.centerRight,
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                    Text("Job seekers", style: CustomTextStyles.headlineLarge30),
                                                                                    CustomImageView(svgPath: ImageConstant.imgArrowdown, height: 8.v, width: 16.h, margin: EdgeInsets.only(left: 19.h, top: 15.v, bottom: 5.v))
                                                                                  ])),
                                                                              GestureDetector(
                                                                                  onTap: () {
                                                                                    onTapTxtBrowsejobs(context);
                                                                                  },
                                                                                  child: Padding(padding: EdgeInsets.only(left: 22.h, top: 40.v), child: Text("Browse Jobs", style: CustomTextStyles.bodyLargeNewsreader))),
                                                                              Padding(padding: EdgeInsets.only(top: 1.v), child: SizedBox(width: 103.h, child: Divider(indent: 22.h))),
                                                                              Container(
                                                                                  height: 16.v,
                                                                                  width: 136.h,
                                                                                  margin: EdgeInsets.only(left: 17.h, top: 19.v),
                                                                                  child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                    Align(alignment: Alignment.topCenter, child: Text("Application History", style: CustomTextStyles.bodyLargeNewsreader)),
                                                                                    Align(alignment: Alignment.bottomCenter, child: SizedBox(width: 132.h, child: Divider()))
                                                                                  ]))
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: SizedBox(
                                                                    width:
                                                                        299.h,
                                                                    child:
                                                                        Divider()))
                                                          ])),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapIconExamM1(
                                                            context);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.fromLTRB(
                                                                  5.h,
                                                                  59.v,
                                                                  6.h,
                                                                  71.v),
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
                                                                      .start,
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
                                                                        left: 24
                                                                            .h,
                                                                        top:
                                                                            4.v,
                                                                        bottom:
                                                                            19.v)),
                                                                Container(
                                                                    width:
                                                                        139.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 27
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
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 11.h, top: 17.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    bottom:
                                                                        10.v),
                                                            child: Text(
                                                                "Username ",
                                                                style: theme
                                                                    .textTheme
                                                                    .headlineLarge)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgEmojimanoffice,
                                                            height: 46.v,
                                                            width: 48.h)
                                                      ]),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgUser,
                                                      height: 42.adaptSize,
                                                      width: 42.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 54.h,
                                                          top: 124.v)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUserOnerror,
                                                      height: 40.v,
                                                      width: 50.h,
                                                      margin: EdgeInsets.only(
                                                          left: 50.h,
                                                          top: 87.v))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 102.v),
                                            child: SizedBox(
                                                width: 359.h,
                                                child: Divider())))
                                  ]))))
                ]))));
  }

  /// Navigates to the androidLargeTwentysixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentysixScreen.
  onTapIconExamM(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwentysixScreen);
  }

  /// Navigates to the androidLargeFourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeFourScreen.
  onTapTxtBrowsejobs(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeFourScreen);
  }

  /// Navigates to the androidLargeTwentysixOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentysixOneScreen.
  onTapIconExamM1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwentysixOneScreen);
  }
}
