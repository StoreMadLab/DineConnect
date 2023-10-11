import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/custom_icon_button.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeNineScreen extends StatelessWidget {
  AndroidLargeNineScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgDineconnectlogosblack,
                          height: 33.v,
                          width: 349.h,
                          margin: EdgeInsets.only(left: 2.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h, top: 10.v),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 19.v,
                                width: 24.h,
                                margin: EdgeInsets.symmetric(vertical: 2.v),
                                onTap: () {
                                  onTapImgArrowleftone(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("Settings",
                                    style: theme.textTheme.headlineSmall))
                          ])),
                      SizedBox(height: 12.v),
                      Divider(),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 322.h,
                              margin:
                                  EdgeInsets.fromLTRB(22.h, 14.v, 16.h, 5.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 45.h, vertical: 38.v),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder30),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            height: 103.v,
                                            width: 114.h,
                                            margin:
                                                EdgeInsets.only(right: 53.h),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgEmojimanoffice,
                                                      height: 93.v,
                                                      width: 96.h,
                                                      alignment:
                                                          Alignment.topLeft),
                                                  CustomIconButton(
                                                      height: 41.adaptSize,
                                                      width: 41.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(8.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .fillOrange,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCameraGray90001))
                                                ]))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 27.v),
                                        child: Text("Username",
                                            style: theme.textTheme.titleLarge)),
                                    CustomTextFormField(
                                        controller: userNameController,
                                        margin: EdgeInsets.only(
                                            top: 11.v, right: 42.h),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillOnPrimaryContainer,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer),
                                    SizedBox(height: 14.v),
                                    Text("Phone number",
                                        style: theme.textTheme.titleLarge),
                                    CustomTextFormField(
                                        controller: phoneNumberController,
                                        margin: EdgeInsets.only(
                                            top: 12.v, right: 43.h),
                                        textInputAction: TextInputAction.done,
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillOnPrimaryContainer,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 7.h, top: 14.v),
                                        child: Text("Location",
                                            style: theme.textTheme.titleLarge)),
                                    SizedBox(height: 11.v),
                                    Container(
                                        height: 17.v,
                                        width: 189.h,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme
                                                .onPrimaryContainer)),
                                    SizedBox(height: 11.v)
                                  ])))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
