import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LauncherScreen extends StatelessWidget {
  const LauncherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      appTheme.indigo90075.withOpacity(0.97),
                      appTheme.indigo90075,
                      appTheme.indigo90075.withOpacity(0.85)
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          CustomImageView(
                              imagePath: ImageConstant.imgDineconnectlogoswhite,
                              height: 336.v,
                              width: 360.h,
                              // onTap: () {
                              //   onTapImgDineconnectlogo(context);
                              // }
                              ),
                          SizedBox(height: 36.v),
                          CustomElevatedButton(
                              height: 46.v,
                              width: 236.h,
                              text: "Create an account",
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle: CustomTextStyles
                                  .headlineSmallInterOnErrorRegular,
                              onTap: () {
                                onTapCreatean(context);
                              }),
                          SizedBox(height: 53.v),
                          CustomElevatedButton(
                              height: 46.v,
                              width: 236.h,
                              text: "Login",
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle: CustomTextStyles
                                  .headlineSmallInterOnErrorRegular,
                              onTap: () {
                                onTapLogin(context);
                              })
                        ])))));
  }

  /// Navigates to the androidLargeTwentythreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentythreeScreen.
  // onTapImgDineconnectlogo(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.androidLargeTwentythreeScreen);
  // }

  /// Navigates to the androidLargeThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeThreeScreen.
  onTapCreatean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createAccountScreen);
  }

  /// Navigates to the androidLargeTwentythreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentythreeScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
