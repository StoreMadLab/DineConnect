import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/application_history_full_screen/application_history_full_Screen.dart';
import 'package:dineconnect/presentation/home_screen/home_screen.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ApplyNowScreen extends StatelessWidget {
  ApplyNowScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController emailController = TextEditingController();

  TextEditingController languageskillController = TextEditingController();

  TextEditingController groupTwentyThreController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    height: 711.v,
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.h, vertical: 9.v),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: 594.v,
                              width: 274.h,
                              margin: EdgeInsets.only(bottom: 31.v),
                              decoration: BoxDecoration(
                                  color: appTheme.blueGray10001
                                      .withOpacity(0.29)))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: EdgeInsets.only(left: 5.h, right: 1.h),
                              padding: EdgeInsets.symmetric(vertical: 95.v),
                              decoration: AppDecoration.fillBlueGray,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomTextFormField(
                                        controller: emailController,
                                        margin: EdgeInsets.only(
                                            left: 10.h, top: 28.v),
                                        hintText: "Email",
                                        textInputType:
                                            TextInputType.emailAddress,
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillBlueGray,
                                        fillColor: appTheme.blueGray10001),
                                    CustomTextFormField(
                                        controller: languageskillController,
                                        margin: EdgeInsets.only(
                                            left: 10.h, top: 18.v),
                                        hintText: "Language Skill",
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillBlueGray,
                                        fillColor: appTheme.blueGray10001),
                                    CustomTextFormField(
                                        controller: groupTwentyThreController,
                                        margin: EdgeInsets.only(
                                            left: 10.h, top: 18.v),
                                        hintText: "Job Specific Experience",
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillBlueGray,
                                        fillColor: appTheme.blueGray10001),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 10.h, top: 9.v),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 17.h, vertical: 7.v),
                                        decoration:
                                            AppDecoration.fillBluegray10001,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h, top: 2.v),
                                                  child: Text(
                                                      "Current Location *",
                                                      style: CustomTextStyles
                                                          .titleLargeSemiBold)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 19.v),
                                                  child: Divider(indent: 2.h))
                                            ])),
                                    CustomElevatedButton(
                                        width: 144.h,
                                        text: "Submit",
                                        margin: EdgeInsets.only(
                                            top: 60.v, right: 56.h),
                                        onTap: () {
                                          onTapSubmit(context);
                                        })
                                  ]))),
                      CustomTextFormField(
                          width: 264.h,
                          controller: userNameController,
                          margin: EdgeInsets.only(top: 86.v),
                          hintText: "Username *",
                          alignment: Alignment.topCenter,
                          borderDecoration:
                              TextFormFieldStyleHelper.fillBlueGray,
                          fillColor: appTheme.blueGray10001),
                      CustomTextFormField(
                          width: 264.h,
                          controller: phoneNumberController,
                          margin: EdgeInsets.only(top: 154.v),
                          hintText: "Phone Number *",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.phone,
                          alignment: Alignment.topRight,
                          borderDecoration:
                              TextFormFieldStyleHelper.fillBlueGray,
                          fillColor: appTheme.blueGray10001)
                    ]))),
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

  /// Navigates to the androidLargeThirtyoneContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeThirtyoneContainerScreen.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.applicationHistoryScreen);
  }
}
