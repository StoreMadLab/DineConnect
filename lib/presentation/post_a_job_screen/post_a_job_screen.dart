import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/android_large_fifteen_page/android_large_fifteen_page.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_page/android_large_thirtyone_page.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image_1.dart';
import 'package:dineconnect/widgets/app_bar/appbar_subtitle.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_header.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PostAJobScreen extends StatelessWidget {
  PostAJobScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  TextEditingController edittextController = TextEditingController();

  TextEditingController edittextoneController = TextEditingController();

  TextEditingController edittexttwoController = TextEditingController();

  TextEditingController edittextthreeController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text('Post a Job',
              style: TextStyle(
                color: Colors.blueAccent[700],
                  fontWeight:FontWeight.bold,
                fontSize: 24.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // appBar: CustomAppBar(
            //     height: 105.v,
            //     centerTitle: true,
            //     title: Column(children: [
            //       Padding(
            //           padding: EdgeInsets.only(left: 10.h, right: 205.h),
            //           child: Row(children: [
            //             AppbarImage1(
            //                 svgPath: ImageConstant.imgArrowleft,
            //                 onTap: () {
            //                   onTapArrowleftone(context);
            //                 }),
            //             AppbarSubtitle(
            //                 text: "Post a Job",
            //                 margin: EdgeInsets.only(left: 7.h, bottom: 3.v))
            //           ])),
            //       SizedBox(height: 9.v),
            //       Align(
            //           alignment: Alignment.centerLeft,
            //           child: SizedBox(width: 355.h, child: Divider()))
            //     ]),
            //     styleType: Style.bgFill_1),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 4.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 37.h, top: 10.v),
                          child: Text("Hotel Name",
                              style: CustomTextStyles
                                  .titleMediumNewsreaderBlue800)),
                      CustomTextFormField(
                          controller: nameController,
                          margin: EdgeInsets.only(
                              left: 37.h, top: 8.v, right: 18.h),
                          alignment: Alignment.centerRight),
                      Padding(
                          padding: EdgeInsets.only(left: 40.h, top: 6.v),
                          child: Text("Role",
                              style: CustomTextStyles.titleLargeBlue800)),
                      CustomTextFormField(
                          controller: edittextController,
                          margin: EdgeInsets.only(
                              left: 40.h, top: 11.v, right: 16.h),
                          alignment: Alignment.centerRight),
                      Padding(
                          padding: EdgeInsets.only(left: 37.h, top: 16.v),
                          child: Text("Description",
                              style: CustomTextStyles.titleLargeBlue800)),
                      CustomTextFormField(
                          controller: edittextoneController,
                          margin: EdgeInsets.only(
                              left: 37.h, top: 6.v, right: 21.h),
                          alignment: Alignment.center,
                          borderDecoration:
                              TextFormFieldStyleHelper.fillPrimary2,
                          fillColor:
                              theme.colorScheme.primary.withOpacity(0.67)),
                      Padding(
                          padding: EdgeInsets.only(left: 37.h, top: 16.v),
                          child: Text("Salary",
                              style: CustomTextStyles.titleLargeBlue800)),
                      CustomTextFormField(
                          controller: edittexttwoController,
                          margin: EdgeInsets.only(
                              left: 37.h, top: 9.v, right: 19.h),
                          alignment: Alignment.center),
                      Padding(
                          padding: EdgeInsets.only(left: 36.h, top: 17.v),
                          child: Text("Working Hours",
                              style: CustomTextStyles.titleLargeBlue800)),
                      CustomTextFormField(
                          controller: edittextthreeController,
                          margin: EdgeInsets.only(
                              left: 35.h, top: 9.v, right: 21.h),
                          alignment: Alignment.center),
                      Padding(
                          padding: EdgeInsets.only(left: 37.h, top: 10.v),
                          child: Text("Location",
                              style: CustomTextStyles.titleLargeBlue800)),
                      CustomTextFormField(
                          controller: locationController,
                          margin: EdgeInsets.only(
                              left: 36.h, top: 6.v, right: 20.h),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center),
                      SizedBox(height: 18.v),
                      Divider(),
                      SizedBox(height: 4.v),
                      CustomElevatedButton(
                          height: 40.v,
                          width: 135.h,
                          text: "SUBMIT",
                          buttonTextStyle:
                              CustomTextStyles.titleMediumNewsreader,
                          onTap: () {
                            onTapSubmit(context);
                          })
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
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the androidLargeTwentynineOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentynineOneScreen.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manageJobsScreen);
  }
}
