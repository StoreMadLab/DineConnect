import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/android_large_fifteen_page/android_large_fifteen_page.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_page/android_large_thirtyone_page.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_icon_button.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeThirtyOneScreen extends StatelessWidget {
  AndroidLargeThirtyOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController detailsfilledController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 96.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: 18.v,
                                    width: 24.h,
                                    margin: EdgeInsets.only(bottom: 4.v),
                                    onTap: () {
                                      onTapImgArrowleftone(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("Application History",
                                        style: theme.textTheme.headlineSmall))
                              ])),
                      SizedBox(height: 11.v),
                      Divider(),
                      Container(
                          width: 346.h,
                          margin: EdgeInsets.fromLTRB(7.h, 13.v, 7.h, 5.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.h, vertical: 10.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 27.h),
                                    child: Row(children: [
                                      CustomIconButton(
                                          height: 62.v,
                                          width: 61.h,
                                          padding: EdgeInsets.all(10.h),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgUserOrange100)),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 5.h, top: 10.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 1.v),
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder25),
                                          child: Text("@Hrithik",
                                              style: CustomTextStyles
                                                  .titleLargeInter))
                                    ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 9.h, top: 14.v),
                                    child: Text("Applied for this job!",
                                        style:
                                            CustomTextStyles.titleLargeInter)),
                                CustomTextFormField(
                                    controller: detailsfilledController,
                                    margin: EdgeInsets.only(
                                        left: 12.h, top: 18.v, right: 27.h),
                                    hintText: "Details Filled",
                                    hintStyle:
                                        CustomTextStyles.bodyLargeNewsreader,
                                    textInputAction: TextInputAction.done,
                                    maxLines: 6,
                                    contentPadding: EdgeInsets.all(2.h),
                                    borderDecoration: TextFormFieldStyleHelper
                                        .fillOnPrimaryContainer,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer),
                                CustomElevatedButton(
                                    width: 144.h,
                                    text: "Contact him!",
                                    margin: EdgeInsets.only(
                                        left: 66.h, top: 12.v, bottom: 3.v))
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
