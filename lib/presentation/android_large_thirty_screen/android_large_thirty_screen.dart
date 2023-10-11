import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/android_large_fifteen_page/android_large_fifteen_page.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_page/android_large_thirtyone_page.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeThirtyScreen extends StatelessWidget {
  AndroidLargeThirtyScreen({Key? key}) : super(key: key);

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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 4.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10.h, top: 91.v),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 27.v,
                                width: 28.h,
                                onTap: () {
                                  onTapImgArrowleftone(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h, top: 2.v),
                                child: Text("Manage jobs",
                                    style: theme.textTheme.headlineSmall))
                          ])),
                      SizedBox(height: 8.v),
                      Divider(),
                      Padding(
                          padding: EdgeInsets.only(left: 37.h, top: 23.v),
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
                          text: "EDIT",
                          buttonTextStyle:
                              CustomTextStyles.titleMediumNewsreader,
                          onTap: () {
                            onTapEdit(context);
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
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the androidLargeTwentynineOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentynineOneScreen.
  onTapEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwentynineOneScreen);
  }
}
