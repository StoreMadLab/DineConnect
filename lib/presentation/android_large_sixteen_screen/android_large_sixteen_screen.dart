import '../android_large_sixteen_screen/widgets/productinfo_item_widget.dart';
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
class AndroidLargeSixteenScreen extends StatelessWidget {
  AndroidLargeSixteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicWidth(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            CustomAppBar(
                                height: 33.v,
                                centerTitle: true,
                                title: AppbarImage1(
                                    imagePath: ImageConstant
                                        .imgDineconnectlogosblack)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgDineconnectlogosblack,
                                height: 33.v,
                                width: 349.h,
                                margin: EdgeInsets.only(left: 40.h))
                          ]))),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 17.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 15.v),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowleft,
                                          height: 30.v,
                                          width: 31.h,
                                          onTap: () {
                                            onTapImgArrowleftone(context);
                                          }),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.h, bottom: 5.v),
                                          child: Text("Menu",
                                              style: theme
                                                  .textTheme.headlineSmall))
                                    ])),
                            SizedBox(height: 3.v),
                            Divider(),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        left: 32.h, top: 18.v, right: 21.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13.h, vertical: 8.v),
                                    decoration: AppDecoration.fillOrange
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder30),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 3.v, bottom: 28.v),
                                              child: Column(children: [
                                                Text("Image:",
                                                    style: CustomTextStyles
                                                        .titleSmallInter),
                                                SizedBox(height: 1.v),
                                                CustomIconButton(
                                                    height: 69.adaptSize,
                                                    width: 69.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(4.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .fillGrayTL20,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlusOnprimary))
                                              ])),
                                          Expanded(
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 27.v, right: 4.h),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom: 2
                                                                              .v),
                                                                      child: Text(
                                                                          "Dish:",
                                                                          style:
                                                                              CustomTextStyles.headlineSmallNicoMojiOnError)),
                                                                  Container(
                                                                      height:
                                                                          25.v,
                                                                      width:
                                                                          119.h,
                                                                      margin: EdgeInsets.only(
                                                                          left: 5
                                                                              .h),
                                                                      decoration: BoxDecoration(
                                                                          color: theme
                                                                              .colorScheme
                                                                              .onPrimaryContainer))
                                                                ])),
                                                        SizedBox(height: 9.v),
                                                        Row(children: [
                                                          Text("Price:",
                                                              style: CustomTextStyles
                                                                  .headlineSmallInterOnError_1),
                                                          Container(
                                                              height: 25.v,
                                                              width: 119.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 4.h,
                                                                      top: 3.v),
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onPrimaryContainer))
                                                        ]),
                                                        CustomElevatedButton(
                                                            height: 21.v,
                                                            width: 120.h,
                                                            text: "ADD Dish",
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 16.h,
                                                                    top: 6.v),
                                                            buttonStyle:
                                                                CustomButtonStyles
                                                                    .fillIndigo,
                                                            buttonTextStyle:
                                                                CustomTextStyles
                                                                    .bodySmallNicoMojiOnPrimaryContainer)
                                                      ])))
                                        ]))),
                            SizedBox(height: 7.v),
                            SizedBox(
                                height: 430.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  31.h, 18.v, 31.h, 113.v),
                                              child: GridView.builder(
                                                  shrinkWrap: true,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                          mainAxisExtent: 138.v,
                                                          crossAxisCount: 2,
                                                          mainAxisSpacing: 23.h,
                                                          crossAxisSpacing:
                                                              23.h),
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  itemCount: 3,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ProductinfoItemWidget();
                                                  }))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 430.v,
                                              width: double.maxFinite,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: SizedBox(
                                                            width: double
                                                                .maxFinite,
                                                            child: Divider())),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            decoration:
                                                                AppDecoration
                                                                    .fillGray400,
                                                            child: Container(
                                                                height: 88.v,
                                                                width: 9.h,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: appTheme
                                                                            .gray500))))
                                                  ])))
                                    ]))
                          ]))
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
