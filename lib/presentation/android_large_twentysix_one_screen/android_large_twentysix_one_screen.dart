import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/android_large_fifteen_page/android_large_fifteen_page.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_page/android_large_thirtyone_page.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeTwentysixOneScreen extends StatelessWidget {
  AndroidLargeTwentysixOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 66.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 746.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                left: 1.h, bottom: 625.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.h,
                                                vertical: 35.v),
                                            decoration: AppDecoration
                                                .gradientIndigoToBlue,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 2.v,
                                                          bottom: 16.v),
                                                      child: Text("Username ",
                                                          style: theme.textTheme
                                                              .headlineLarge)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgEmojimanoffice,
                                                      height: 46.v,
                                                      width: 48.h,
                                                      margin: EdgeInsets.only(
                                                          right: 11.h,
                                                          bottom: 4.v))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 1.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24.h,
                                                vertical: 30.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapIconExamM(context);
                                                      },
                                                      child: Container(
                                                          margin: EdgeInsets.only(
                                                              left: 11.h),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      22.h,
                                                                  vertical:
                                                                      28.v),
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
                                                                            .imgUser,
                                                                    height: 42
                                                                        .adaptSize,
                                                                    width: 42
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.only(
                                                                        left:
                                                                            6.h,
                                                                        bottom:
                                                                            7.v)),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 41
                                                                            .h,
                                                                        top:
                                                                            8.v,
                                                                        bottom: 7
                                                                            .v),
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
                                                                        top: 23
                                                                            .v,
                                                                        bottom:
                                                                            18.v))
                                                              ]))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapIconExamM1(
                                                            context);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 7.h,
                                                                  top: 28.v,
                                                                  right: 4.h),
                                                          padding:
                                                              EdgeInsets.symmetric(
                                                                  horizontal:
                                                                      14.h,
                                                                  vertical:
                                                                      28.v),
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
                                                                            .imgUserOnerror,
                                                                    height:
                                                                        40.v,
                                                                    width: 50.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 16
                                                                            .h,
                                                                        bottom:
                                                                            10.v)),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 31
                                                                            .h,
                                                                        top:
                                                                            4.v,
                                                                        bottom: 13
                                                                            .v),
                                                                    child: Text(
                                                                        "Job seeker",
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
                                                                        top: 20
                                                                            .v,
                                                                        bottom:
                                                                            21.v))
                                                              ]))),
                                                  Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              6.h,
                                                              48.v,
                                                              5.h,
                                                              68.v),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 16.v),
                                                      decoration: AppDecoration
                                                          .gradientIndigoToIndigo40093
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder30),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                                height: 67.v,
                                                                width: 300.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerRight,
                                                                          child: Container(
                                                                              width: 139.h,
                                                                              margin: EdgeInsets.only(right: 48.h),
                                                                              child: Text("Income Calculator\n ", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineLarge))),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowdown,
                                                                          height: 8
                                                                              .v,
                                                                          width: 16
                                                                              .h,
                                                                          alignment: Alignment
                                                                              .bottomRight,
                                                                          margin: EdgeInsets.only(
                                                                              right: 17.h,
                                                                              bottom: 27.v)),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: SizedBox(
                                                                              width: 300.h,
                                                                              child: Divider())),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCalculator,
                                                                          height: 48
                                                                              .adaptSize,
                                                                          width: 48
                                                                              .adaptSize,
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          margin: EdgeInsets.only(
                                                                              left: 36.h,
                                                                              top: 6.v))
                                                                    ])),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 31
                                                                            .h,
                                                                        top: 10
                                                                            .v),
                                                                child: Text(
                                                                    "Orders",
                                                                    style: CustomTextStyles
                                                                        .bodyLargeNewsreader)),
                                                            SizedBox(
                                                                width: 79.h,
                                                                child: Divider(
                                                                    indent:
                                                                        31.h)),
                                                            CustomElevatedButton(
                                                                height: 16.v,
                                                                width: 74.h,
                                                                text:
                                                                    "Employees",
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 31
                                                                            .h,
                                                                        top: 8
                                                                            .v),
                                                                buttonStyle:
                                                                    CustomButtonStyles
                                                                        .underLineOnError,
                                                                buttonTextStyle:
                                                                    CustomTextStyles
                                                                        .bodyLargeNewsreader,
                                                                onTap: () {
                                                                  onTapEmployees(
                                                                      context);
                                                                }),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapTxtMenu(
                                                                      context);
                                                                },
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 31
                                                                            .h,
                                                                        top: 6
                                                                            .v),
                                                                    child: Text(
                                                                        "Menu",
                                                                        style: CustomTextStyles
                                                                            .bodyLargeNewsreader))),
                                                            SizedBox(
                                                                width: 72.h,
                                                                child: Divider(
                                                                    indent:
                                                                        31.h)),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapTxtVendors(
                                                                      context);
                                                                },
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 30
                                                                            .h,
                                                                        top: 6
                                                                            .v),
                                                                    child: Text(
                                                                        "Vendors",
                                                                        style: CustomTextStyles
                                                                            .bodyLargeNewsreader))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 20
                                                                            .v),
                                                                child: SizedBox(
                                                                    width: 87.h,
                                                                    child: Divider(
                                                                        indent:
                                                                            31.h)))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 107.v),
                                            child: SizedBox(
                                                width: double.maxFinite,
                                                child: Divider())))
                                  ]))))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
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

  /// Navigates to the androidLargeTwentysixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentysixScreen.
  onTapIconExamM(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwentysixScreen);
  }

  /// Navigates to the androidLargeTwentysevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentysevenScreen.
  onTapIconExamM1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ordersScreen);
  }

  /// Navigates to the androidLargeEighteenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeEighteenScreen.
  onTapEmployees(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.employeesScreen);
  }

  /// Navigates to the androidLargeSixteenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeSixteenScreen.
  onTapTxtMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }

  /// Navigates to the androidLargeNineteenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeNineteenScreen.
  onTapTxtVendors(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vendorsScreen);
  }
}
