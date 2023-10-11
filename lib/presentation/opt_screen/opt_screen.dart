import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/core/utils/utils.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image.dart';
import 'package:dineconnect/widgets/app_bar/appbar_title.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_pin_code_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class opt_screen extends StatelessWidget {
  final String verificationid;
  opt_screen({Key? key, required this.verificationid}) : super(key: key);

  TextEditingController otpController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 56.v,
                leadingWidth: 55.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftOnprimary,
                    margin:
                        EdgeInsets.only(left: 29.h, top: 14.v, bottom: 14.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarTitle(
                    text: "OTP", margin: EdgeInsets.only(left: 16.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 11.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgOtp1,
                      height: 184.v,
                      width: 267.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 4.h)),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(top: 86.v, right: 12.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Verification Code",
                                    style: CustomTextStyles
                                        .headlineLargeIndigo80001),
                                TextSpan(text: " ")
                              ]),
                              textAlign: TextAlign.left))),
                  Container(
                      width: 266.h,
                      margin:
                          EdgeInsets.only(left: 19.h, top: 52.v, right: 7.h),
                      child: Text(
                          "We have sent verification code to\n\n your Mobile Number",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargeOnPrimary_1)),
                  SizedBox(height: 26.v),
                  Text("+91 9902543321", style: theme.textTheme.titleLarge),
                  // CustomPinCodeTextField(
                  //     context: context,
                  //     margin:
                  //         EdgeInsets.only(top: 66.v, right: 4.h, bottom: 5.v),
                  //     onChanged: (value) {})
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: otpController,
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter 6 digit number',

                    ),


                  )
                ])),
            bottomNavigationBar: CustomElevatedButton(
                height: 35.v,
                width: 168.h,
                text: "SUBMIT",
                margin: EdgeInsets.only(left: 97.h, right: 95.h, bottom: 32.v),
                buttonStyle: CustomButtonStyles.fillPrimaryTL17,
                buttonTextStyle: theme.textTheme.titleLarge!,
                onTap: () {
                  onTapSubmit(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the androidLargeTwentyfiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentyfiveScreen.
  onTapSubmit(BuildContext context) async {
    final credential = PhoneAuthProvider.credential(
        verificationId: verificationid,
        smsCode: otpController.text.toString()
    );

    try{
      await _auth.signInWithCredential(credential);

      Navigator.pushNamed(context, AppRoutes.homeScreen);
    }catch(e){
      Utils().toastMessage(e.toString());
    }
    // Navigator.pushNamed(context, AppRoutes.androidLargeTwentyfiveScreen);
  }
}
