import 'package:dineconnect/presentation/home_screen/home_screen.dart';

import '../browse_jobs/widgets/userprofile_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/application_history_full_screen/application_history_full_Screen.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image_1.dart';
import 'package:dineconnect/widgets/app_bar/appbar_subtitle.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BrowseJobsScreen extends StatelessWidget {
  BrowseJobsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text("Browse Jobs",
              style: TextStyle(
                color: Colors.black
              ),
              ),
            ),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      height: 15.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.blueGray100)),
                  CustomTextFormField(
                      controller: locationController,
                      margin:
                          EdgeInsets.only(left: 12.h, top: 20.v, right: 17.h),
                      hintText: "Job,Location",
                      hintStyle: CustomTextStyles.bodyLargeNewsreader,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(14.h, 1.v, 12.h, 1.v),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSearch)),
                      prefixConstraints: BoxConstraints(maxHeight: 28.v),
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 1.v, 11.h, 1.v),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgFilter)),
                      suffixConstraints: BoxConstraints(maxHeight: 28.v),
                      contentPadding: EdgeInsets.symmetric(vertical: 6.v),
                      borderDecoration: TextFormFieldStyleHelper.fillPrimary),
                  Expanded(
                      child: Padding(
                          padding:
                              EdgeInsets.only(left: 5.h, top: 21.v, right: 3.h),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 22.v);
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return UserprofileItemWidget(
                                    onTapUserprofile: () {
                                  onTapUserprofile(context);
                                });
                              })))
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
        return ApplicationHistoryFullScreen();
      case AppRoutes.androidLargeFifteenPage:
        return HomeScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentyeightScreen.
  onTapUserprofile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwentyeightScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
