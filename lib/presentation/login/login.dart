import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../../core/utils/utils.dart';
import '../opt_screen/opt_screen.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController mobileNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 35.h, right: 21.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Login Account",
                                    style: CustomTextStyles
                                        .headlineLargeIndigo80001SemiBold),
                                CustomImageView(
                                    imagePath: ImageConstant.imgIndia,
                                    height: 21.adaptSize,
                                    width: 21.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 19.h, top: 2.v, bottom: 8.v)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: 8.v,
                                    width: 16.h,
                                    margin: EdgeInsets.only(
                                        left: 6.h, top: 8.v, bottom: 14.v))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 35.h, top: 23.v),
                              child: Text("Hello,Welcome back.",
                                  style:
                                      CustomTextStyles.titleLargeIndigo80001))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 45.h, top: 53.v),
                              child: Text("Phone Number",
                                  style:
                                      CustomTextStyles.titleLargeOnPrimary_1))),
                      CustomTextFormField(
                          controller: mobileNoController,
                          margin: EdgeInsets.only(
                              left: 25.h, top: 33.v, right: 14.h),
                          textStyle: TextStyle(color: Colors.black),
                          hintText: "Enter your number",
                          textInputType: TextInputType.phone,
                          hintStyle: CustomTextStyles.bodyLargeNewsreader,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(11.h, 12.v, 30.h, 12.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIndia,
                                  height: 21.adaptSize,
                                  width: 21.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 45.v),
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 7.v, 29.h, 10.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgRectangle,
                                  height: 28.adaptSize,
                                  width: 28.adaptSize)),
                          suffixConstraints: BoxConstraints(maxHeight: 45.v),
                          contentPadding: EdgeInsets.symmetric(vertical: 11.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillSecondaryContainer,
                          fillColor: theme.colorScheme.secondaryContainer),
                      CustomElevatedButton(
                          height: 45.v,
                          text: "Request OTP",
                          margin: EdgeInsets.only(
                              left: 27.h, top: 59.v, right: 12.h),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: theme.textTheme.titleLarge!,
                          onTap: () {
                            onTapRequestotp(context);
                          }),
                      SizedBox(height: 41.v),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text("Dont have a Account?"),
                      //     TextButton(onPressed: (){
                      //       Navigator.pushNamed(context, AppRoutes.androidLargeThreeScreen);
                      //     },
                      //         child: Text(
                      //             'Sign up',
                      //           style: TextStyle(color: Colors.red),
                      //         )
                      //     )
                      //   ],
                      // ),

                      SizedBox(
                          height: 13.v,
                          width: 324.h,
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 5.v),
                                        child: SizedBox(
                                            width: 324.h,
                                            child: Divider(
                                                color: theme
                                                    .colorScheme.onPrimary)))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 77.h),
                                        child: Text("or Sign in with Google",
                                            style: theme.textTheme.bodyMedium)))
                              ])),
                      CustomElevatedButton(
                          height: 45.v,
                          text: "Google",
                          margin: EdgeInsets.only(
                              left: 35.h, top: 49.v, right: 32.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 30.h),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgGoogle)),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallOnError),
                      SizedBox(height: 67.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccount(context);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Don’t have an account ?",
                                    style:
                                        CustomTextStyles.titleLargeOnPrimary),
                                TextSpan(
                                    text: " Join Now",
                                    style: CustomTextStyles.titleLargeRedA700),
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 3.v)
                    ]))));
  }



  onTapRequestotp(BuildContext context) async {
    String phone = mobileNoController.text;

    CollectionReference usersRef = FirebaseFirestore.instance.collection('users');
    DocumentSnapshot docSnap = await usersRef.doc(phone).get();

    if (docSnap.exists) {
      // User exists, send OTP
      _auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (_) {},
        verificationFailed: (e) {
          Utils().toastMessage(e.toString());
        },
        codeSent: (String verificationId, int? token) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpScreen(verificationId: verificationId, phoneNumber: phone,),
            ),
          );
        },
        codeAutoRetrievalTimeout: (e) {
          Utils().toastMessage(e.toString());
        },
      );
    } else {
      // User doesn't exist, navigate to create account screen
      Navigator.pushNamed(context, AppRoutes.createAccountScreen);
    }
  }

  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createAccountScreen);
  }
}
