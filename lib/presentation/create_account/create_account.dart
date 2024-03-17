import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/core/utils/utils.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:dineconnect/presentation/opt_screen/opt_screen.dart';

// ignore_for_file: must_be_immutable
class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //text field
  String name = "";
  String phone = "";
  String location = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 76.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 47.h),
                                child: Text("Create a Account",
                                    style: CustomTextStyles
                                        .titleLargeOnPrimaryBold))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: 210.h,
                                margin: EdgeInsets.only(left: 47.h, top: 14.v),
                                child: Text(
                                    "Please fill the details to create an \naccount",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary))),
                        CustomTextFormField(
                            controller: fullNameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                            margin: EdgeInsets.only(
                                left: 47.h, top: 32.v, right: 44.h),
                            hintText: "Full Name",
                            hintStyle: CustomTextStyles.bodySmallLight,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 13.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillPrimaryTL19),
                        CustomTextFormField(
                            controller: phoneNumberController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your phone number';
                              }
                              return null;
                            },
                            margin: EdgeInsets.only(
                                left: 47.h, top: 13.v, right: 44.h),
                            hintText: "Phone Number",
                            hintStyle: CustomTextStyles.bodySmallLight,
                            textInputType: TextInputType.phone,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 13.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillPrimaryTL19),
                        CustomTextFormField(
                            controller: locationController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your location';
                              }
                              return null;
                            },
                            margin: EdgeInsets.only(
                                left: 46.h, top: 25.v, right: 44.h),
                            hintText: "Location",
                            hintStyle: CustomTextStyles.bodySmallLight,
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 12.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillPrimaryTL19),
                        SizedBox(height: 18.v),
                        CustomElevatedButton(
                            height: 40.v,
                            width: 135.h,
                            text: "REGISTER",
                            buttonTextStyle: CustomTextStyles
                                .titleSmallInterOnPrimaryContainer,
                            onTap: () {
                              onTapRegister(context);
                            }),
                        SizedBox(height: 54.v),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, AppRoutes.loginScreen);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Already have an account ?",
                                    style: CustomTextStyles.titleLargeOnPrimary),
                                TextSpan(
                                    text: " Join Now",
                                    style: CustomTextStyles.titleLargeRedA700)
                              ]),
                              textAlign: TextAlign.left),
                        ),

                        SizedBox(height: 60.v),
                        SizedBox(
                            width: double.maxFinite,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 6.v),
                                      child: SizedBox(
                                          width: 96.h, child: Divider())),
                                  Text("or Sign up with Google",
                                      style: theme.textTheme.bodyMedium),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 6.v),
                                      child: SizedBox(
                                          width: 88.h, child: Divider()))
                                ])),
                        CustomElevatedButton(
                            height: 45.v,
                            text: "Google",
                            margin: EdgeInsets.only(
                                left: 60.h, top: 45.v, right: 43.h),
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 30.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgGoogle)),
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            buttonTextStyle:
                                CustomTextStyles.headlineSmallOnError),
                        SizedBox(height: 133.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                height: 177.v,
                                child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    color: theme.colorScheme.onError)))
                      ])))
                    ])))));
  }

  /// Navigates to the androidLargeTwentyfourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeTwentyfourScreen.
  // onTapRegister(BuildContext context) async {
  //   name = fullNameController.text;
  //   phone = phoneNumberController.text;
  //   location = locationController.text;
  //
  //   if (_formKey.currentState!.validate()) {
  //     DatabaseReference usersRef = FirebaseDatabase.instance.ref().child("users");
  //     DatabaseEvent databaseEvent = await usersRef.child(phone).once();
  //     if (databaseEvent.snapshot.value != null) {
  //       // User with the phone number already exists
  //       Utils().toastMessage("Account already registered");
  //       Navigator.pushNamed(context, AppRoutes.loginScreen); // Navigate to login screen
  //     } else {
  //       try {
  //         _auth.verifyPhoneNumber(
  //           phoneNumber: phone,
  //           verificationCompleted: (_) {},
  //           verificationFailed: (e) {
  //             Utils().toastMessage(e.toString());
  //           },
  //           codeSent: (String verificationId, int? token) async {
  //             // Save user details to the database
  //             await usersRef.child(phone).set({
  //               "fullName": name,
  //               "phoneNumber": phone,
  //               "location": location,
  //             });
  //
  //             Navigator.push(
  //               context,
  //               MaterialPageRoute(
  //                 builder: (context) => OtpScreen(verificationId: verificationId, phoneNumber: phone,),
  //               ),
  //             );
  //           },
  //           codeAutoRetrievalTimeout: (e) {
  //             Utils().toastMessage(e.toString());
  //           },
  //         );
  //       } catch (e) {
  //         Utils().toastMessage(e.toString());
  //       }
  //     }
  //   }
  // }

  onTapRegister(BuildContext context) async {
    String name = fullNameController.text;
    String phone = phoneNumberController.text;
    String location = locationController.text;

    if (_formKey.currentState!.validate()) {
      CollectionReference usersRef = FirebaseFirestore.instance.collection('users');
      DocumentSnapshot docSnap = await usersRef.doc(phone).get();

      if (docSnap.exists) {
        // User with the phone number already exists
        Utils().toastMessage("Account already registered");
        Navigator.pushNamed(context, AppRoutes.loginScreen); // Navigate to login screen
      } else {
        try {
          _auth.verifyPhoneNumber(
            phoneNumber: phone,
            verificationCompleted: (_) {},
            verificationFailed: (e) {
              Utils().toastMessage(e.toString());
            },
            codeSent: (String verificationId, int? token) async {
              // Save user details to the database
              await usersRef.doc(phone).set({
                "fullName": name,
                "phoneNumber": phone,
                "location": location,
              });

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
        } catch (e) {
          Utils().toastMessage(e.toString());
        }
      }
    }
  }





}
