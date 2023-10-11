import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/android_large_fifteen_page/android_large_fifteen_page.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_page/android_large_thirtyone_page.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image_1.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeSeventeenScreen extends StatelessWidget {
  AndroidLargeSeventeenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                centerTitle: true,
                title: AppbarImage1(
                    imagePath: ImageConstant.imgDineconnectlogosblack)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 6.v),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: 23.v,
                                    width: 32.h,
                                    margin: EdgeInsets.only(top: 5.v),
                                    onTap: () {
                                      onTapImgArrowleftone(context);
                                    }),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 9.h, bottom: 4.v),
                                    child: Text("Create Order",
                                        style: theme.textTheme.headlineSmall))
                              ])),
                      Divider(),
                      CustomElevatedButton(
                          height: 75.v,
                          text: "ONo:-01",
                          margin: EdgeInsets.only(
                              left: 11.h, top: 10.v, right: 9.h),
                          buttonStyle: CustomButtonStyles.fillOrange,
                          buttonTextStyle: theme.textTheme.displaySmall!,
                          alignment: Alignment.center),
                      SizedBox(height: 13.v),
                      SizedBox(
                          height: 445.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 22.h, top: 11.v, right: 22.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                        margin: EdgeInsets.only(
                                                            right: 10.h),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    29.h,
                                                                vertical: 7.v),
                                                        decoration: AppDecoration
                                                            .fillOrange
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder30),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle53,
                                                                  height: 70
                                                                      .adaptSize,
                                                                  width: 70
                                                                      .adaptSize),
                                                              SizedBox(
                                                                  height: 8.v),
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          9.h,
                                                                      vertical:
                                                                          1.v),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .fillGray,
                                                                  child: Text(
                                                                      "chi-Noodles",
                                                                      style: CustomTextStyles
                                                                          .bodySmallInter)),
                                                              SizedBox(
                                                                  height: 8.v),
                                                              Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgIconminus,
                                                                        height:
                                                                            1.v,
                                                                        width: 18
                                                                            .h,
                                                                        margin: EdgeInsets.symmetric(
                                                                            vertical:
                                                                                11.v)),
                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left: 10
                                                                                .h),
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 6
                                                                                .h,
                                                                            vertical: 1
                                                                                .v),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillOnPrimaryContainer,
                                                                        child: Text(
                                                                            "0",
                                                                            style:
                                                                                theme.textTheme.bodyLarge)),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgPlusOnerror,
                                                                        height: 17
                                                                            .adaptSize,
                                                                        width: 17
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                11.h,
                                                                            bottom: 3.v))
                                                                  ]),
                                                              SizedBox(
                                                                  height: 8.v)
                                                            ]))),
                                                Expanded(
                                                    child: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 10.h),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    29.h,
                                                                vertical: 7.v),
                                                        decoration: AppDecoration
                                                            .fillOrange
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder30),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle53,
                                                                  height: 70
                                                                      .adaptSize,
                                                                  width: 70
                                                                      .adaptSize),
                                                              SizedBox(
                                                                  height: 8.v),
                                                              SizedBox(
                                                                  height: 17.v,
                                                                  width: 88.h,
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Container(
                                                                                height: 17.v,
                                                                                width: 88.h,
                                                                                decoration: BoxDecoration(color: appTheme.gray100))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            child: Text("Veg-Noodles", style: CustomTextStyles.bodySmallInter))
                                                                      ])),
                                                              SizedBox(
                                                                  height: 7.v),
                                                              Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgIconminus,
                                                                        height:
                                                                            1.v,
                                                                        width: 18
                                                                            .h,
                                                                        margin: EdgeInsets.symmetric(
                                                                            vertical:
                                                                                11.v)),
                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left: 14
                                                                                .h),
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 6
                                                                                .h,
                                                                            vertical: 1
                                                                                .v),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillOnPrimaryContainer,
                                                                        child: Text(
                                                                            "0",
                                                                            style:
                                                                                theme.textTheme.bodyLarge)),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgPlusOnerror,
                                                                        height: 17
                                                                            .adaptSize,
                                                                        width: 17
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                15.h,
                                                                            bottom: 3.v))
                                                                  ]),
                                                              SizedBox(
                                                                  height: 7.v)
                                                            ])))
                                              ]),
                                          SizedBox(height: 42.v),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 29.h,
                                                  vertical: 9.v),
                                              decoration: AppDecoration
                                                  .fillOrange
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder30),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle53,
                                                        height: 70.adaptSize,
                                                        width: 70.adaptSize),
                                                    SizedBox(height: 4.v),
                                                    Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 4.h,
                                                                vertical: 1.v),
                                                        decoration:
                                                            AppDecoration
                                                                .fillGray,
                                                        child: Text(
                                                            "egg-Noodles",
                                                            style: CustomTextStyles
                                                                .bodySmallInter)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                6.h,
                                                                4.v,
                                                                5.h,
                                                                12.v),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgIconminus,
                                                                  height: 1.v,
                                                                  width: 18.h,
                                                                  margin: EdgeInsets.only(
                                                                      top: 12.v,
                                                                      bottom: 10
                                                                          .v)),
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          6.h,
                                                                      vertical:
                                                                          1.v),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .fillOnPrimaryContainer,
                                                                  child: Text(
                                                                      "0",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyLarge)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgPlusOnerror,
                                                                  height: 17
                                                                      .adaptSize,
                                                                  width: 17
                                                                      .adaptSize,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          bottom:
                                                                              3.v))
                                                            ]))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 445.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                  width: double.maxFinite,
                                                  child: Divider())),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  decoration:
                                                      AppDecoration.fillGray400,
                                                  child: Container(
                                                      height: 88.v,
                                                      width: 9.h,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .gray500))))
                                        ])))
                          ])),
                      Divider(),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 11.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total:0000Rs",
                                        style: CustomTextStyles
                                            .headlineLargeInter),
                                    Container(
                                        height: 32.v,
                                        width: 107.h,
                                        margin: EdgeInsets.only(
                                            top: 4.v, bottom: 2.v),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomIconButton(
                                                  height: 32.v,
                                                  width: 107.h,
                                                  alignment: Alignment.center,
                                                  child: CustomImageView()),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text("Done",
                                                      style: CustomTextStyles
                                                          .headlineSmallInterOnPrimaryContainer))
                                            ]))
                                  ]))),
                      SizedBox(width: 220.h, child: Divider(indent: 16.h))
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

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
