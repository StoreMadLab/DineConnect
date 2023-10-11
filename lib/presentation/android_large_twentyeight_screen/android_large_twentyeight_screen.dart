import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/android_large_fifteen_page/android_large_fifteen_page.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_page/android_large_thirtyone_page.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeTwentyeightScreen extends StatelessWidget {
  AndroidLargeTwentyeightScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: 717.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 29.v),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 37.v),
                          decoration: AppDecoration.fillBlueGray,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 97.v,
                                    width: 196.h,
                                    margin:
                                        EdgeInsets.only(left: 5.h, top: 42.v),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                  width: 165.h,
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "Main Chef\n",
                                                            style: CustomTextStyles
                                                                .headlineLargePoppins),
                                                        TextSpan(
                                                            text: "",
                                                            style: CustomTextStyles
                                                                .titleLargeSemiBold_1),
                                                        TextSpan(
                                                            text:
                                                                "Mundappan Hotel",
                                                            style: CustomTextStyles
                                                                .titleLargeBluegray900)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgLocation,
                                              height: 17.v,
                                              width: 12.h,
                                              alignment: Alignment.bottomLeft,
                                              margin:
                                                  EdgeInsets.only(bottom: 3.v)),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                  "Sultan Battery,Mangalore",
                                                  style: CustomTextStyles
                                                      .bodyLargeNewsreader))
                                        ])),
                                SizedBox(height: 72.v),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCamera,
                                          height: 21.v,
                                          width: 24.h,
                                          margin: EdgeInsets.only(top: 1.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.h, bottom: 8.v),
                                          child: Text("Salary",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: 21.v,
                                        width: 197.h,
                                        margin: EdgeInsets.only(
                                            top: 3.v, right: 9.h),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 21.v,
                                                      width: 197.h,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 1.v),
                                                      child: Text(
                                                          "Rs 12,000 to 15,100 per month",
                                                          style: theme.textTheme
                                                              .bodyMedium)))
                                            ]))),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, top: 19.v),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgBag,
                                              height: 21.v,
                                              width: 19.h,
                                              margin:
                                                  EdgeInsets.only(top: 1.v)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 21.h, bottom: 8.v),
                                              child: Text("Job Type",
                                                  style: theme
                                                      .textTheme.titleSmall))
                                        ])),
                                Container(
                                    margin: EdgeInsets.only(left: 41.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.h, vertical: 1.v),
                                    decoration:
                                        AppDecoration.fillOnPrimaryContainer,
                                    child: Text("Full Time",
                                        style: theme.textTheme.bodyMedium)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 4.h, top: 27.v),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgClock,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 22.h, bottom: 4.v),
                                              child: Text("Shift and schedule",
                                                  style: theme
                                                      .textTheme.titleSmall))
                                        ])),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 46.h, top: 4.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6.h, vertical: 1.v),
                                    decoration:
                                        AppDecoration.fillOnPrimaryContainer,
                                    child: Text("Day shift",
                                        style: theme.textTheme.bodyMedium)),
                                SizedBox(height: 9.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.h, vertical: 1.v),
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer,
                                        child: Text("Monday to Saturday",
                                            style:
                                                theme.textTheme.bodyMedium))),
                                SizedBox(height: 97.v),
                                CustomElevatedButton(
                                    width: 144.h,
                                    text: "Apply Now",
                                    onTap: () {
                                      onTapApplynow(context);
                                    },
                                    alignment: Alignment.center)
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(top: 197.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 1.v),
                          decoration: AppDecoration.fillOnPrimaryContainer,
                          child: Text("Job Details",
                              style: theme.textTheme.titleLarge)))
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

  /// Navigates to the androidLargeTwentynineScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentynineScreen.
  onTapApplynow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwentynineScreen);
  }
}
